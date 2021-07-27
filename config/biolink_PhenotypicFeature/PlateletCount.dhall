let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let integer = meta.integer
in {
    name = "PlateletCount",
    identifiers = [
        "MONDO:000204",
        "MONDO:000224",
        "MONDO:0008585",
        "NCIT:C51951",
        "UMLSCUI:C0032181",
        "NCIT:C143764",
        "UMLSCUI:CL545991",
        "NCIT:C53266",
        "UMLSCUI:C1709566",
        "NCIT:C53267",
        "UMLSCUI:C1709567",
        "NCIT:C154723",
        "UMLSCUI:CL556888",
        "NCIT:C154733",
        "UMLSCUI:CL556904",
        "NCIT:C162108",
        "UMLSCUI:C0392386",
        "NCIT:C162107",
        "UMLSCUI:CL471574",
        "NCIT:C168963",
        "UMLSCUI:CL1378780",
        "NCIT:C74729",
        "UMLSCUI:C2697898",
        "NCIT:C74728",
        "UMLSCUI:C2697501"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "74775-8"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "777-3"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "778-1"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "62244-9"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "74464-9"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "40574-6"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "13056-7"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "15201-7"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "71692-8"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "26515-7"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "49497-1"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "47284-5"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "55802-3"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "26516-5"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "53800-9"
        }
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}