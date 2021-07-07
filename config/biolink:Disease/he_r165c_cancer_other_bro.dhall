let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_r165c_cancer_other_bro",
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