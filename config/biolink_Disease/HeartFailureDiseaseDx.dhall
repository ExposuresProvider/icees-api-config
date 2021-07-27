let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "HeartFailureDiseaseDx",
    identifiers = [
        "MONDO:0005009",
        "MONDO:0001899",
        "MONDO:0006932",
        "MONDO:0015280",
        "MONDO:0010851",
        "NCIT:C50577",
        "UMLSCUI:C0018801",
        "LOINC:LP269425-7",
        "LOINC:LP269421-6",
        "SCTID:84114007"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm*",
            code = "I50*"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Disease"
        ]
    },
    binning_strategy = max_cutoff 2
}