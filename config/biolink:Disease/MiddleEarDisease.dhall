let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "MiddleEarDisease",
    identifiers = [
        "MONDO:0003276",
        "MONDO:0001234",
        "MONDO:0021366",
        "MONDO:0006533",
        "MESH:D018424",
        "SCITD:7699004",
        "SCITD:232250008",
        "SCITD:194330006",
        "SCITD:31700001",
        "SCITD:39222009",
        "SCITD:20916007",
        "SCITD:68996008",
        "SCITD:155260002"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = False,
            system_is_regex = False,
            system = "https://browser.ihtsdotools.org",
            code = "SCTID: 65363002"
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