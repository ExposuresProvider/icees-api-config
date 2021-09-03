let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "BronchiectasisDx",
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = False,
            system_is_regex = False,
            system = "https://browser.ihtsdotools.org",
            code = "SCTID: 233629001"
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
    binning_strategy = max_cutoff 2,
    identifiers = [
        "SNOMED:12295008",
        "SNOMED:77593006",
        "SNOMED:195985008",
        "SNOMED:23022004",
        "SNOMED:233628009",
        "SNOMED:51068008",
        "SNOMED:12310001",
        "SNOMED:233630006",
        "LOINC:LA25633-1",
        "MESH:D001987"
    ]
}