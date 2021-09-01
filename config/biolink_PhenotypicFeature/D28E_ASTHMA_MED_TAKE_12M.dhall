let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "D28E_ASTHMA_MED_TAKE_12M",
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