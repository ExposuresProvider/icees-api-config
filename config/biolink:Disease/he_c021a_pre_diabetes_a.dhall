let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_c021a_pre_diabetes_a",
    identifiers = [
        "MONDO:0005147"
    ],
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