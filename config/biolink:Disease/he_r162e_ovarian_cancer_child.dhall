let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_r162e_ovarian_cancer_child",
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