let meta = ../../common/meta.dhall
let range = meta.range
let cut = meta.cut
in {
    name = "Avg24hOzoneExposure_StudyMax",
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    },
    binning_strategy = cut 5
}