let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_n101_trouble_having_child",
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