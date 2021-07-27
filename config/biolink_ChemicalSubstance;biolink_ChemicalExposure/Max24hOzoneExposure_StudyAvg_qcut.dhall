let meta = ../../common/meta.dhall
let range = meta.range
let qcut = meta.qcut
in {
    name = "Max24hOzoneExposure_StudyAvg_qcut",
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    },
    binning_strategy = qcut 5
}