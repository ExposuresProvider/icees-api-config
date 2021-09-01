let meta = ../../common/meta.dhall
let environmental_mapping = meta.environmental_mapping
let prev_date = meta.prev_date
let range = meta.range
let cut = meta.cut
in {
    name = "Avg24hPM2.5Exposure",
    identifiers = [
        "MESH:D052638",
        "NCIT:C29886",
        "UMLS:C1510837",
        "SNOMED:278694008",
        "ENVO:01000060"
    ],
    mapping = environmental_mapping {
        dataset = "cmaq",
        column = "AvgDailyPM2.5Exposure"
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