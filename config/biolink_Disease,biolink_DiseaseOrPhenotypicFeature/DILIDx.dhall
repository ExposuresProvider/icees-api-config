let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let range = meta.range
in {
    name = "DILIDx",
    identifiers = [
        "NCIT:C84427",
        "UMLSCUI:C0860207",
        "SCITD:427399008",
        "MONDO:0043693",
        "MONDO:0001505",
        "MONDO:0021105",
        "MONDO:0005359"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm*",
            code = "573.8"
        },
        {
            resource = "Condition",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm*",
            code = "573.9"
        },
        {
            resource = "Condition",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm*",
            code = "K71.*"
        },
        {
            resource = "Condition",
            code_is_regex = False,
            system_is_regex = False,
            system = "https://browser.ihtsdotools.org",
            code = "SCTID:427399008"
        }
    ],
    feature = {
        feature_type = range 0 1,
        categories = [
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}