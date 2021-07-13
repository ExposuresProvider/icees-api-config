let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let no_categories = meta.no_categories
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "AlcoholDependence",
    identifiers = [
        "SCTID:66590003",
        "SCTID:713583005",
        "SCTID:273264006",
        "SCTID:713862009",
        "SCTID:714829008",
        "SCTID:273802002",
        "SCTID:10741871000119101",
        "SCTID:10755041000119100",
        "SCTID:273799006",
        "SCTID:288031000119105",
        "SCTID:443504004",
        "SCTID:191802004"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = no_categories
    },
    binning_strategy = max_cutoff 2
}