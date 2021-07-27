let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "SNP4",
    feature = {
        feature_type = enum [
            "N",
            "L",
            "M"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}