let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_j066_rheu_arthritis",
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