let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let integer = meta.integer
in {
    name = "BaseDeficit",
    identifiers = [
        "SNOMED:102634007",
        "SNOMED:26154000",
        "SNOMED:723209009",
        "LOINC:LP15428-3",
        "LOINC:LP46145-6",
        "LOINC:LP46154-8",
        "LOINC:LP49420-0",
        "LOINC:LP49421-8",
        "LOINC:LP65778-0",
        "LOINC:LP49421-8",
        "LOINC:LP46153-0",
        "LOINC:LP99896-0",
        "LOINC:LP46159-7",
        "LOINC:LP49420-0",
        "LOINC:LP48932-5",
        "LOINC:LP70045-7",
        "LOINC:LP383296-3",
        "LOINC:LP383297-1",
        "LOINC:LP383298-9",
        "LOINC:LP383299-7",
        "LOINC:LP383303-7",
        "LOINC:LP383300-3",
        "NCIT:C147309",
        "UMLS:CL545959"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "30318-0"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "1922-4"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "1923-2"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "59154-5"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "30317-2"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "28637-7"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "53116-0"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "1924-0"
        }
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}