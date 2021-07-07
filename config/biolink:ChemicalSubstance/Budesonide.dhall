let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
in {
    name = "Budesonide",
    identifiers = [
        "SMILES:CCCC1O[C@@H]2C[C@H]3[C@@H]4CCC5:CC(:O)C:C[C@]5(C)[C@H]4[C@@H](O)C[C@]3(C)[C@@]2(O1)C(:O)CO",
        "CAS:51333-22-3",
        "MESH:D019819",
        "CHEMBL:CHEMBL1370",
        "PUBCHEM:5281004",
        "RXCUI:616817",
        "RXCUI:616819",
        "RXCUI:616830",
        "RXCUI:966524",
        "RXCUI:966529",
        "RXCUI:1797931",
        "RXCUI:1244215",
        "RXCUI:1246290",
        "RXCUI:1246306",
        "RXCUI:1246315",
        "RXCUI:1246317",
        "RXCUI:1366556",
        "RXCUI:1596778",
        "RXCUI:1797929",
        "RXCUI:247551",
        "RXCUI:141917",
        "RXCUI:247047",
        "RXCUI:247048",
        "RXCUI:1244214",
        "RXCUI:247042",
        "RXCUI:247691",
        "RXCUI:247481",
        "RXCUI:349094",
        "RXCUI:351109",
        "RXCUI:153173",
        "RXCUI:252559",
        "RXCUI:409732",
        "RXCUI:597829",
        "RXCUI:1246288",
        "RXCUI:1246304",
        "RXCUI:1246314",
        "RXCUI:1246316",
        "RXCUI:966522",
        "RXCUI:966527",
        "RXCUI:1366550",
        "RXCUI:1596779",
        "RXCUI:250648",
        "UMLSCUI:C0939010",
        "UMLSCUI:C1703204",
        "UMLSCUI:C1169541",
        "UMLSCUI:C1948304",
        "UMLSCUI:C1948306",
        "UMLSCUI:C0875802",
        "UMLSCUI:C0592462",
        "UMLSCUI:C1876888",
        "UMLSCUI:C1876887",
        "UMLSCUI:C1966262",
        "UMLSCUI:C1966261",
        "UMLSCUI:C3531324",
        "UMLSCUI:C3864313",
        "UMLSCUI:C0788679",
        "UMLSCUI:C4239003",
        "UMLSCUI:C0542862",
        "UMLSCUI:C0787972",
        "UMLSCUI:C0787973",
        "UMLSCUI:C0592460",
        "UMLSCUI:C4239002",
        "UMLSCUI:C4239004",
        "UMLSCUI:C0788570",
        "UMLSCUI:C1164602",
        "UMLSCUI:C1168655",
        "UMLSCUI:C0593930",
        "UMLSCUI:C0794777",
        "UMLSCUI:C1338988",
        "UMLSCUI:C1660662",
        "UMLSCUI:C1967742",
        "UMLSCUI:C1967737",
        "UMLSCUI:C1967738",
        "UMLSCUI:C1967733",
        "UMLSCUI:C1968012",
        "UMLSCUI:C1968013",
        "UMLSCUI:C3531318",
        "UMLSCUI:C3864327",
        "UMLSCUI:C4239005",
        "SCTID:395726003",
        "SCTID:317446001",
        "SCTID:108622005",
        "SCTID:413717007",
        "SCTID:356117009",
        "SCTID:350389004",
        "SCTID:317694006",
        "SCTID:349367000",
        "SCTID:349366009",
        "SCTID:320574006",
        "SCTID:317695007",
        "SCTID:317443009",
        "SCTID:375834008",
        "SCTID:320571003",
        "SCTID:377034005",
        "SCTID:320570002",
        "SCTID:413721000",
        "SCTID:410849004",
        "SCTID:407886008",
        "SCTID:407885007",
        "SCTID:376245009",
        "SCTID:331032009",
        "SCTID:417175001",
        "SCTID:320569003",
        "SCTID:428160008",
        "SCTID:428161007",
        "SCTID:407833005",
        "SCTID:413720004",
        "SCTID:413722007",
        "SCTID:413718002",
        "SCTID:320567001",
        "SCTID:320568006",
        "SCTID:320565009",
        "SCTID:134498003",
        "SCTID:134499006",
        "SCTID:413719005",
        "SCTID:408023003"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "616817",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "616819",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "616830",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "966524",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "966529",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797931",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1244215",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1366556",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1596778",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797929",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "247551",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "141917",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "247047",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "247048",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1244214",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "247042",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "247691",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "247481",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "349094",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "351109",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "153173",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "252559",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "966522",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "966527",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1366550",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1596779",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "250648",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    }
}