let meta = ../../common/meta.dhall
let prev_date = meta.prev_date
let environmental_mapping = meta.environmental_mapping
let range = meta.range
let qcut = meta.qcut
in {
    name = "Avg24hBenzeneExposure_2_qcut",
    identifiers = [
        "CHEBI:16716",
        "PUBCHEM:241",
        "MESH:D001554"
    ],
    mapping = environmental_mapping {
        dataset = "cmaq2",
        column = "AvgDailyBenzeneExposure_2"
    },
    statistic = prev_date,
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    },
    binning_strategy = qcut 5
}