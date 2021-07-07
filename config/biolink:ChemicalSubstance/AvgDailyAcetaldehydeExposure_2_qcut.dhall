let meta = ../../common/meta.dhall
let environmental_mapping = meta.environmental_mapping
let range = meta.range
let avg = meta.avg
let qcut = meta.qcut
in {
    name = "AvgDailyAcetaldehydeExposure_2_qcut",
    identifiers = [
        "CHEBI:15343",
        "PUBCHEM:177",
        "MESH:D000079"
    ],
    mapping = environmental_mapping {
        dataset = "cmaq2",
        column = "AvgDailyAcetaldehydeExposure_2"
    },
    statistic = avg,
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    },
    binning_strategy = qcut 5
}