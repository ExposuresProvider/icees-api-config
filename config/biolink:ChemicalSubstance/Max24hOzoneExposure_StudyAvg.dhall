let meta = ../../common/meta.dhall
let cut = meta.cut
let range = meta.range
in {
    name = "Max24hOzoneExposure_StudyAvg",
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    },
    binning_strategy = cut 5
}