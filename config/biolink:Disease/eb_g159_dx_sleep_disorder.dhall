let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_g159_dx_sleep_disorder",
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