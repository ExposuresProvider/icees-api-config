let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_o115_cancer_leukemia",
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