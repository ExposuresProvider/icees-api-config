let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_s185_smoke_indoors",
    identifiers = [
        "NCIT:C127108",
        "NCIT:C127106"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalEntity",
            "biolink:ChemicalExposure"
        ]
    },
    binning_strategy = max_cutoff 2
}