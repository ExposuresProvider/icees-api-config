let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_r166b_diabetes_dad",
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}