let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "MiddleEarDiseaseDx",
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
            "biolink:Disease"
        ]
    },
    binning_strategy = max_cutoff 2,
    identifiers = [
        "MONDO:0003276",
        "MONDO:0001234",
        "MONDO:0021366",
        "MONDO:0006533",
        "MESH:D018424",
        "SNOMED:7699004",
        "SNOMED:232250008",
        "SNOMED:194330006",
        "SNOMED:31700001",
        "SNOMED:39222009",
        "SNOMED:20916007",
        "SNOMED:68996008",
        "SNOMED:155260002"
    ]
}