let meta = ../../common/meta.dhall
let enum = meta.enum
let no_categories = meta.no_categories
in {
    name = "KidneyCancer",
    identifiers = [
        "SCTID:363518003",
        "SCTID:315270004",
        "SCTID:94360002",
        "SCTID:430703009",
        "SCTID:406064003",
        "SCTID:406081007",
        "SCTID:406065002"
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