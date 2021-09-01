let meta = ../../common/meta.dhall
let environmental_mapping = meta.environmental_mapping
let avg = meta.avg
let range = meta.range
let qcut = meta.qcut
in {
    name = "AvgDailyFormaldehydeExposure_2_qcut",
    identifiers = [
        "CHEBI:16842",
        "PUBCHEM.COMPOUND:712",
        "MESH:D005557"
    ],
    mapping = environmental_mapping {
        dataset = "cmaq2",
        column = "AvgDailyFormaldehydeExposure_2"
    },
    statistic = avg,
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:SmallMolecule",
            "biolink:ChemicalExposure"
        ]
    },
    binning_strategy = qcut 5
}