let meta = ../../common/meta.dhall
let environmental_mapping = meta.environmental_mapping
let prev_date = meta.prev_date
let range = meta.range
let qcut = meta.qcut
in {
    name = "Avg24hPM2.5Exposure_2_qcut",
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