let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_c023c_thyroid_enlarged",
    identifiers = [
        "MONDO:0006354",
        "MONDO:0005397",
        "SCITD:237568003",
        "SCITD:267370001",
        "SCITD:190235005",
        "NCIT:C26785",
        "UMLSCUI:C0018021",
        "NCIT:C35271",
        "UMLSCUI:C0221777",
        "NCIT:C131440",
        "NCIT:C131438",
        "UMLSCUI:C0342208",
        "NCIT:C131072",
        "UMLSCUI:C0342205",
        "NCIT:C131436",
        "UMLSCUI:C0342114",
        "NCIT:C131437",
        "UMLSCUI:C0018023"
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