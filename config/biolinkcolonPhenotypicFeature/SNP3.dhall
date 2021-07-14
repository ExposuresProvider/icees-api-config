let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "SNP3",
    feature = {
        feature_type = enum [
            "E",
            "F",
            "D"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}