let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_m088_hormone_replacement",
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