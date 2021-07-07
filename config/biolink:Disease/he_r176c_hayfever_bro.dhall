let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_r176c_hayfever_bro",
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