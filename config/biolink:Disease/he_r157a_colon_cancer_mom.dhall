let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_r157a_colon_cancer_mom",
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