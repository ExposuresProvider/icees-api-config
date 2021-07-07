let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_m090_uterine_polyps",
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