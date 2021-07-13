let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let no_categories = meta.no_categories
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "eb_m322_babies_delivered_n",
    feature = {
        feature_type = enum [
            "0",
            "1",
            "2",
            ">2"
        ],
        categories = no_categories
    },
    binning_strategy = max_cutoff 3
}