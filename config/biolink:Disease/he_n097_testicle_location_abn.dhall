let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_n097_testicle_location_abn",
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