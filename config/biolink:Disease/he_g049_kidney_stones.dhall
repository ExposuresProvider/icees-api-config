let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_g049_kidney_stones",
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