let meta = ../../common/meta.dhall
let environmental_mapping = meta.environmental_mapping
let avg = meta.avg
let range = meta.range
let cut = meta.cut
in {
    name = "AvgDailySO2Exposure_2",
    identifiers = [
        "CHEBI:18422",
        "PUBCHEM:1119",
        "MESH:D013458"
    ],
    mapping = environmental_mapping {
        dataset = "cmaq2",
        column = "AvgDailySO2Exposure_2"
    },
    statistic = avg,
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    },
    binning_strategy = cut 5
}