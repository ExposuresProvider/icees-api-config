let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let integer = meta.integer
in {
    name = "Troponin",
    identifiers = [
        "NCIT:C111327",
        "UMLS:C0523952",
        "MONDO:0011539",
        "NCIT:C104220",
        "UMLS:C3538889",
        "LOINC:LG433-9",
        "LOINC:LG19584-8",
        "LOINC:LG13250-2",
        "LOINC:LP14890-5",
        "LOINC:LP17145-1",
        "SCTID:102680009",
        "PUBCHEM.COMPOUND:16131354",
        "PUBCHEM.COMPOUND:44152811"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "10839-9"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "6598-7"
        }
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}