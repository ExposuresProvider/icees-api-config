let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "D28C_ASTHMA_EPISODE_12M",
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