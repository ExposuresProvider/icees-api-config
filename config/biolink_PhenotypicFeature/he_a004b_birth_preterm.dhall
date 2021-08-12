let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_a004b_birth_preterm",
    identifiers = [
        "NCIT:C159087",
        "SCITD:367494004",
        "SCITD:65588006",
        "SCITD:34089005",
        "SCITD:24146004",
        "SCITD:112075006",
        "SCITD:29997008",
        "SCITD:13859001",
        "SCITD:59403008",
        "SCITD:4886009",
        "SCITD:20272009",
        "SCITD:25192009",
        "SCITD:65588006",
        "SCITD:54650005",
        "SCITD:25192009",
        "SCITD:84382006",
        "SCITD:34100008",
        "SCITD:3798002",
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