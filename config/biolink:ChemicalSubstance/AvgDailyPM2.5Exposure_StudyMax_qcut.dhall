let meta = ../../common/meta.dhall
let max = meta.max
let environmental_mapping = meta.environmental_mapping
let range = meta.range
let qcut = meta.qcut
in {
    name = "AvgDailyPM2.5Exposure_StudyMax_qcut",
    identifiers = [
        "MESH:D052638",
        "NCIT:C29886",
        "UMLSCUI:C1510837",
        "SCTID:278694008",
        "ENVO:01000060"
    ],
    mapping = environmental_mapping {
        dataset = "cmaq",
        column = "AvgDailyPM2.5Exposure"
    },
    statistic = max,
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    },
    binning_strategy = qcut 5
}