let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let range = meta.range
in {
    name = "CharlsonComorbidityIndex",
    identifiers = [
        "NCIT:C176422",
        "SCTID:762713009",
        "SCTID:446619003",
        "SCTID:446363004"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Measurement",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm*",
            code = "M65.32"
        }
    ],
    feature = {
        feature_type = range 0 37,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}