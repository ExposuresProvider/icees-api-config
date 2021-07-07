let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_o135_cancer_other",
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