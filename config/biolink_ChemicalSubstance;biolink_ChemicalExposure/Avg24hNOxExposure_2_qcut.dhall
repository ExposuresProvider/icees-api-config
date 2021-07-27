let meta = ../../common/meta.dhall
let environmental_mapping = meta.environmental_mapping
let prev_date = meta.prev_date
let range = meta.range
let qcut = meta.qcut
in {
    name = "Avg24hNOxExposure_2_qcut",
    identifiers = [
        "CHEBI:35196"
    ],
    mapping = environmental_mapping {
        dataset = "cmaq2",
        column = "AvgDailyNOxExposure_2"
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