let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "D28H_ASTHMA_14D_NUM_WHEEZE_TEXT",
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}