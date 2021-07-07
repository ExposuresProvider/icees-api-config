let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_s188_alcohol_mo",
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