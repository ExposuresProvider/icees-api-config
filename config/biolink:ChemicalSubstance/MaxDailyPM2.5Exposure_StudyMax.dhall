let meta = ../../common/meta.dhall
let environmental_mapping = meta.environmental_mapping
let range = meta.range
let max = meta.max
in {
    name = "MaxDailyPM2.5Exposure_StudyMax",
    identifiers = [
        "MESH:D052638",
        "NCIT:C29886",
        "UMLSCUI:C1510837",
        "SCTID:278694008",
        "ENVO:01000060"
    ],
    mapping = environmental_mapping {
        dataset = "cmaq",
        column = "MaxDailyPM2.5Exposure"
    },
    statistic = max,
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    }
}