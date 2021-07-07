let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_f046a_hep_a",
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