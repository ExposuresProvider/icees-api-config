let meta = ../../common/meta.dhall
let cut = meta.cut
let environmental_mapping = meta.environmental_mapping
let range = meta.range
let avg = meta.avg
in {
    name = "AvgDailyCOExposure_2",
    identifiers = [
        "CHEBI:17245",
        "PUBCHEM:281",
        "MESH:D002248"
    ],
    mapping = environmental_mapping {
        dataset = "cmaq2",
        column = "AvgDailyCOExposure_2"
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