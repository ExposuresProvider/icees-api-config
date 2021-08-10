let meta = ../../common/meta.dhall
let environmental_mapping = meta.environmental_mapping
let max = meta.max
let range = meta.range
let qcut = meta.qcut
in {
    name = "MaxDailyOzoneExposure_StudyMax_qcut",
    identifiers = [
        "MESH:D010126",
        "PUBCHEM.COMPOUND:24823",
        "SCTID:40057008",
        "CHEBI:25812",
        "ENVO:01000537"
    ],
    mapping = environmental_mapping {
        dataset = "cmaq",
        column = "MaxDailyOzoneExposure"
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