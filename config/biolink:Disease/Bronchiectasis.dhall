let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Bronchiectasis",
    identifiers = [
        "SCITD:12295008",
        "SCITD:77593006",
        "SCITD:195985008",
        "SCITD:23022004",
        "SCITD:233628009",
        "SCITD:51068008",
        "SCITD:12310001",
        "SCITD:233630006",
        "LOINC:LA25633-1",
        "MESH:D001987"
    ],
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
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    },
    binning_strategy = max_cutoff 2
}