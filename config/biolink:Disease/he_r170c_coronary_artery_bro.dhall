let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_r170c_coronary_artery_bro",
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