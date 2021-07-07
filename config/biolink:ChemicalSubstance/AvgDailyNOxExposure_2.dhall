let meta = ../../common/meta.dhall
let environmental_mapping = meta.environmental_mapping
let range = meta.range
let avg = meta.avg
in {
    name = "AvgDailyNOxExposure_2",
    identifiers = [
        "CHEBI:35196"
    ],
    mapping = environmental_mapping {
        dataset = "cmaq2",
        column = "AvgDailyNOxExposure_2"
    },
    statistic = avg,
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    }
}