let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let integer = meta.integer
in {
    name = "Procalcitonin",
    identifiers = [
        "LOINC:LP31682-5",
        "SCTID:418752001",
        "LOINC:LP50616-9",
        "LOINC:33959-8",
        "LOINC:LP381196-7",
        "LOINC:75241-0",
        "NCIT:C173465",
        "NCIT:C103430",
        "UMLS:C1535922"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "33959-8"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "75241-0"
        }
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}