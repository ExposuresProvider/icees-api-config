let meta = ../../common/meta.dhall
let range = meta.range
let qcut = meta.qcut
in {
    name = "AvgDailyOzoneExposure_qcut",
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:SmallMolecule",
            "biolink:ChemicalExposure"
        ]
    },
    binning_strategy = qcut 5
}