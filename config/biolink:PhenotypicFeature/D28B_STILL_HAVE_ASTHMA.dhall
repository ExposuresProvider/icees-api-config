let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "D28B_STILL_HAVE_ASTHMA",
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