let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "D28D_ASTHMA_ER_VISIT_12M",
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