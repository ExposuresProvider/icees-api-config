let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_f108_genital_herpes",
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