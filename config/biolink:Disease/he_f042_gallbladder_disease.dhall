let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_f042_gallbladder_disease",
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