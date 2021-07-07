let meta = ../../common/meta.dhall
let enum = meta.enum
let no_categories = meta.no_categories
in {
    name = "Fibromyalgia",
    identifiers = [
        "SCTID:203082005",
        "SCTID:95417003"
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