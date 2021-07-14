let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "D28_ASTHMA",
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