let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "IN_FINAL_SAMPLE",
    feature = {
        feature_type = enum [
            "True",
            "False"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}