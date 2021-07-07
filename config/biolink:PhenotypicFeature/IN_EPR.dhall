let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "IN_EPR",
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}