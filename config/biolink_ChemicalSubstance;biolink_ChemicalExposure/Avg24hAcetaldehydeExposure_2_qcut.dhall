let meta = ../../common/meta.dhall
let environmental_mapping = meta.environmental_mapping
let prev_date = meta.prev_date
let range = meta.range
let qcut = meta.qcut
in {
    name = "Avg24hAcetaldehydeExposure_2_qcut",
    identifiers = [
        "CHEBI:15343",
        "PUBCHEM.COMPOUND:177",
        "MESH:D000079"
    ],
    mapping = environmental_mapping {
        dataset = "cmaq2",
        column = "AvgDailyAcetaldehydeExposure_2"
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