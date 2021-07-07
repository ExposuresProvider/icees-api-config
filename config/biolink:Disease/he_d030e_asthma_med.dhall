let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_d030e_asthma_med",
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