let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_o105_cancer_blood",
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