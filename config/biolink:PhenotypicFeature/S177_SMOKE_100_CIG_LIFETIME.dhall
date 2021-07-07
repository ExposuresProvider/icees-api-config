let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "S177_SMOKE_100_CIG_LIFETIME",
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