let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "CroupDx",
    identifiers = [
        "MONDO:0005722",
        "MONDO:0018597",
        "SCTID:195714005",
        "SCTID:22951000119104",
        "SCTID:232428009",
        "SCTID:232430006",
        "SCTID:53926002",
        "SCTID:71186008",
        "ICD9:464%",
        "ICD10:J05.%",
        "NCIT:C26735",
        "UMLS:C0010380"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(464[.]).*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(J05[.]).*"
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