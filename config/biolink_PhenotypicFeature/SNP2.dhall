let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "SNP2",
    feature = {
        feature_type = enum [
            "Z",
            "X",
            "Y"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}