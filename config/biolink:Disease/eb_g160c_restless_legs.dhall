let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_g160c_restless_legs",
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