let meta = ../../common/meta.dhall
let enum = meta.enum
let no_categories = meta.no_categories
let generic_fhir_mapping = meta.generic_fhir_mapping
let no_identifiers = meta.no_identifiers
in {
    name = "IsolationFlag",
    identifiers = no_identifiers,
    mapping = generic_fhir_mapping [
        {
            resource = "Procedure",
            code_is_regex = False,
            system_is_regex = False,
            system = "https://browser.ihtsdotools.org",
            code = "SCTID: 40174006"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = no_categories
    }
}