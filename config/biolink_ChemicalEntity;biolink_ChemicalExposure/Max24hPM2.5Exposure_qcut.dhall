let meta = ../../common/meta.dhall
let environmental_mapping = meta.environmental_mapping
let prev_date = meta.prev_date
let range = meta.range
let qcut = meta.qcut
in {
    name = "Max24hPM2.5Exposure_qcut",
    identifiers = [
        "MESH:D052638",
        "NCIT:C29886",
        "UMLS:C1510837",
        "SNOMED:278694008",
        "ENVO:01000060"
    ],
    mapping = environmental_mapping {
        dataset = "cmaq",
        column = "MaxDailyPM2.5Exposure"
    },
    statistic = prev_date,
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:ChemicalEntity",
            "biolink:ChemicalExposure"
        ]
    },
    binning_strategy = qcut 5
}