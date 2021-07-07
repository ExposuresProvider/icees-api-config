let meta = ../../common/meta.dhall
let enum = meta.enum
let no_categories = meta.no_categories
in {
    name = "OvarianDysfunction",
    identifiers = [
        "SCTID:37102008",
        "SCTID:699275001",
        "SCTID:442781001"
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