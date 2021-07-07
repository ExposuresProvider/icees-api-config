let meta = ../../common/meta.dhall
let range = meta.range
in {
    name = "Max24hPM2.5Exposure_StudyAvg",
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    }
}