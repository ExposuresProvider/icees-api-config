let meta = ../../common/meta.dhall
let cut = meta.cut
let environmental_mapping = meta.environmental_mapping
let range = meta.range
let avg = meta.avg
in {
    name = "AvgDailyPM2.5Exposure_2",
    identifiers = [
        "MESH:D052638",
        "NCIT:C29886",
        "UMLSCUI:C1510837",
        "SCTID:278694008",
        "ENVO:01000060"
    ],
    mapping = environmental_mapping {
        dataset = "cmaq2",
        column = "AvgDailyPM2.5Exposure_2"
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