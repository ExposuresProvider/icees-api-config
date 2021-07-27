let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let string = meta.string
in {
    name = "DischargeStatus",
    identifiers = [
        "LOINC:LP74745-8",
        "LOINC:LA162-0",
        "LOINC:52523-8",
        "LOINC:42345-9",
        "SCITD:309039003",
        "SCITD:58000006",
        "MESH:D010351"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "https://browser.ihtsdotools.org",
            code = "SCTID: 309039003"
        }
    ],
    feature = {
        feature_type = string,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}