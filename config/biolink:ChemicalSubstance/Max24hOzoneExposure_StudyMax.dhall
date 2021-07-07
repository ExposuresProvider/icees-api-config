let meta = ../../common/meta.dhall
let range = meta.range
in {
    name = "Max24hOzoneExposure_StudyMax",
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    }
}