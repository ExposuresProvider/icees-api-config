let meta = ../../common/meta.dhall
let environmental_mapping = meta.environmental_mapping
let max = meta.max
let range = meta.range
let cut = meta.cut
in {
    name = "AvgDailyOzoneExposure_StudyMax",
    identifiers = [
        "MESH:D010126",
        "PUBCHEM:24823",
        "SCTID:40057008",
        "CHEBI:25812",
        "ENVO:01000537"
    ],
    mapping = environmental_mapping {
        dataset = "cmaq",
        column = "AvgDailyOzoneExposure"
    },
    statistic = max,
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    },
    binning_strategy = cut 5
}