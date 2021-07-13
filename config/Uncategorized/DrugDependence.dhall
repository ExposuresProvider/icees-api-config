let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let no_categories = meta.no_categories
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "DrugDependence",
    identifiers = [
        "SCTID:191816009",
        "SCTID:231482005",
        "SCTID:153501000119105",
        "SCTID:199253007",
        "SCTID:441681009",
        "SCTID:231481003",
        "SCTID:95918004",
        "SCTID:153491000119103",
        "SCTID:1461000119109",
        "SCTID:724714000",
        "SCTID:191877009",
        "SCTID:191829009",
        "SCTID:237228001",
        "SCTID:10755161000119102",
        "SCTID:268641003",
        "SCTID:414056002",
        "SCTID:414054004",
        "SCTID:429299000",
        "SCTID:191865004",
        "SCTID:191871005",
        "SCTID:724704009",
        "SCTID:199252002",
        "SCTID:414055003",
        "SCTID:191868002",
        "SCTID:191874002",
        "SCTID:191873008",
        "SCTID:191867007",
        "SCTID:191869005",
        "SCTID:191875001",
        "SCTID:199254001",
        "SCTID:267206008",
        "SCTID:34150001",
        "SCTID:199255000"
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