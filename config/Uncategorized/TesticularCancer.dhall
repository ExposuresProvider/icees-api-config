let meta = ../../common/meta.dhall
let enum = meta.enum
let no_categories = meta.no_categories
in {
    name = "TesticularCancer",
    identifiers = [
        "SCTID:315272007",
        "SCTID:717041008"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = no_categories
    }
}