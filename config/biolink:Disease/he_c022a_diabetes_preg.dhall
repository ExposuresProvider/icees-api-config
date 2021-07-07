let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_c022a_diabetes_preg",
    identifiers = [
        "MONDO:0005406"
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