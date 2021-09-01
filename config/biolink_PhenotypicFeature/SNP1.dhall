let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "SNP1",
    feature = {
        feature_type = enum [
            "A",
            "C",
            "B"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}