#output identifiers including all, unmatched, mached, matched with equivalent, and equivalent only 
import yaml
import requests
import json

with open(r'D:\BL\Renci\icees-api-config\Python-BL\Identifiers_all.yaml', 'w') as output_file:
    with open("identifiers.yml") as f:

            # open and read yam files
            data = yaml.load(f, Loader=yaml.FullLoader)

            table_all = {}
            table_equivalent_only = {}        
            table_equivalent = {}
            table_matched = {}
            table_unmatched = {}
       
            equivalent_only_file = open(r'D:\BL\Renci\icees-api-config\Python-BL\equivalent.yaml', 'w')
             
            equivalent_output_file = open(r'D:\BL\Renci\icees-api-config\Python-BL\Identifiers_equivalent.yaml', 'w')
            matched_output_file = open(r'D:\BL\Renci\icees-api-config\Python-BL\Identifiers_matched.yaml', 'w')
            unmatched_output_file = open(r'D:\BL\Renci\icees-api-config\Python-BL\Identifiers_unmatched.yaml', 'w')
            
            identifier_list = []
            for item, doc in data.items():
                for identifiers in doc.values():
                    identifier_list += identifiers

            identifier_set = set(identifier_list)
            input_obj = {
                "curies": list(identifier_set)
            }
            resp = requests.post("https://nodenormalization-sri.renci.org/1.1/get_normalized_nodes", headers={
                "Content-Type": "application/json",
                "Accept": "applicaton/json"
            }, json=input_obj)
            obj = resp.json()
            
#item - table name
#doc - data dictionary

            for item, doc in data.items():
                table_all.setdefault(item, {})
                table_matched.setdefault(item, {})
                table_unmatched.setdefault(item, {})
                table_equivalent.setdefault(item, {})
                table_equivalent_only.setdefault(item, {})
            
                for variable in doc.keys():
                    identifiers = doc[variable]
                    
                    variable_identifiers_equivalent_only = []
                    variable_identifiers_equivalent = []
                    variable_identifiers_matched = []
                    variable_identifiers_unmatched = []
                    
                    for identifier in identifiers:
                        if obj[identifier] is None:
                            variable_identifiers_unmatched.append({identifier : None})
                        else:
                            equivalent_identifiers = list(map(lambda x: str(x["identifier"]), obj[identifier]["equivalent_identifiers"]))
                            
                            variable_identifiers_matched.append({identifier : str(obj[identifier]["id"]["identifier"])})
                                                                    #+"\n"+str(obj[identifier]["equivalent_identifiers"]["identifier"])})
                            variable_identifiers_equivalent.append({identifier: equivalent_identifiers})
                            variable_identifiers_equivalent_only += equivalent_identifiers
                            
                    table_equivalent_only[item][variable] = variable_identifiers_equivalent_only
           
                    table_equivalent[item][variable] = variable_identifiers_equivalent
                    table_matched[item][variable] = variable_identifiers_matched
                    table_unmatched[item][variable] = variable_identifiers_unmatched
                    table_all[item][variable] = variable_identifiers_matched + variable_identifiers_unmatched
                    
            yaml.dump(table_equivalent_only, equivalent_only_file)
            yaml.dump(table_equivalent, equivalent_output_file)
            yaml.dump(table_matched, matched_output_file)
            yaml.dump(table_unmatched, unmatched_output_file)
            yaml.dump(table_all, output_file)
            
            equivalent_only_file.close()        
            equivalent_output_file.close()        
            matched_output_file.close()
            unmatched_output_file.close()
