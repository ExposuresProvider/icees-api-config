let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "AST_Onset_ULN",
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}