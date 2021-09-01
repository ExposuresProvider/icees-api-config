let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "UterineCancerDx",
    identifiers = [
        "SNOMED:371973000",
        "SNOMED:363354003",
        "SNOMED:428941002",
        "SNOMED:423973006",
        "SNOMED:428944005",
        "SNOMED:428047000",
        "SNOMED:406043002",
        "SNOMED:406044008",
        "MONDO:0002715",
        "MONDO:0016252",
        "MONDO:0006003",
        "MONDO:0005131",
        "MONDO:0003612",
        "MONDO:0000553",
        "MONDO:0006485"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(179|182)[.].*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(C55)[.].*"
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