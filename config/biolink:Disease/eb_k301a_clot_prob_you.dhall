let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_k301a_clot_prob_you",
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