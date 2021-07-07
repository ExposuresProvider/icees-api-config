let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_o128_cancer_skin_dk",
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