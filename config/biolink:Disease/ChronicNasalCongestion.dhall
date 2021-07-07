let meta = ../../common/meta.dhall
let enum = meta.enum
let generic_fhir_mapping = meta.generic_fhir_mapping
in {
    name = "ChronicNasalCongestion",
    identifiers = [
        "NCIT:C78500",
        "UMLSCUI:C0027424",
        "NCIT:C143698",
        "NCIT:C144284",
        "NCIT:C144860",
        "SCITD:232210005",
        "SCITD:162380009",
        "SCITD:68235000",
        "LOINC:LA9263-0"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = False,
            system_is_regex = False,
            system = "https://browser.ihtsdotools.org",
            code = "SCTID: 68235000"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}