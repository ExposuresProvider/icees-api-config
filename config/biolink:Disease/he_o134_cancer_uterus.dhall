let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_o134_cancer_uterus",
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