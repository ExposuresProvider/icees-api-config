let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_f114_hep_c",
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