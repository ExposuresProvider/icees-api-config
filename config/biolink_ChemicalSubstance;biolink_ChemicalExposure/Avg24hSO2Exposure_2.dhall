let meta = ../../common/meta.dhall
let environmental_mapping = meta.environmental_mapping
let prev_date = meta.prev_date
let range = meta.range
let cut = meta.cut
in {
    name = "Avg24hSO2Exposure_2",
    identifiers = [
        "CHEBI:18422",
        "PUBCHEM.COMPOUND:1119",
        "MESH:D013458"
    ],
    mapping = environmental_mapping {
        dataset = "cmaq2",
        column = "AvgDailySO2Exposure_2"
    },
    statistic = prev_date,
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    },
    binning_strategy = cut 5
}