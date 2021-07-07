let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_k306a_PKD_you",
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