let meta = ../../common/meta.dhall
let no_identifiers = meta.no_identifiers
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
in {
    name = "EstimatedGFR",
    identifiers = no_identifiers,
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "69405-9"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}