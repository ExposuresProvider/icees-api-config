let meta = ../../common/meta.dhall
let environmental_mapping = meta.environmental_mapping
let range = meta.range
in {
    name = "AvgDailyPM2.5Exposure",
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
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    }
}