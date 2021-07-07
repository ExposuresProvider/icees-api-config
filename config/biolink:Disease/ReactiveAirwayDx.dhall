let meta = ../../common/meta.dhall
let enum = meta.enum
let generic_fhir_mapping = meta.generic_fhir_mapping
in {
    name = "ReactiveAirwayDx",
    identifiers = [
        "SCTID:991000119106",
        "SCTID:371088008",
        "HP:0002099",
        "HP:0002099",
        "ICD9:496%",
        "ICD10:J44.%",
        "ICD10:J66.%",
        "NCIT:C113673",
        "UMLSCUI:C3714497"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(496[.]).*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(J44[.]|J66[.]).*"
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