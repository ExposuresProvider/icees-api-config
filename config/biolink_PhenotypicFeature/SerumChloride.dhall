let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let integer = meta.integer
in {
    name = "SerumChloride",
    identifiers = [
        "SNOMED:166694004",
        "SNOMED:271238006",
        "SNOMED:1000671000000100",
        "SNOMED:166696002",
        "SNOMED:166695003",
        "OXMIS:L118NA",
        "OXMIS:L118NN",
        "LOINC:LP386588-0",
        "LOINC:2075-0",
        "NCIT:C61021",
        "UMLS:C1317978",
        "LOINC:77138-6"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "77138-6"
        }
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}