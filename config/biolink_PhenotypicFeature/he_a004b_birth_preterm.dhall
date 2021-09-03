let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_a004b_birth_preterm",
    identifiers = [
        "NCIT:C159087",
        "SNOMED:367494004",
        "SNOMED:65588006",
        "SNOMED:34089005",
        "SNOMED:24146004",
        "SNOMED:112075006",
        "SNOMED:29997008",
        "SNOMED:13859001",
        "SNOMED:59403008",
        "SNOMED:4886009",
        "SNOMED:20272009",
        "SNOMED:25192009",
        "SNOMED:65588006",
        "SNOMED:54650005",
        "SNOMED:25192009",
        "SNOMED:84382006",
        "SNOMED:34100008",
        "SNOMED:3798002",
        "MESH:D047928",
        "MESH:D007234"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    },
    binning_strategy = max_cutoff 2
}