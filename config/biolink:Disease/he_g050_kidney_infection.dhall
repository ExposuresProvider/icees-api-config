let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_g050_kidney_infection",
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