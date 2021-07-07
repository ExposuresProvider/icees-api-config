let meta = ../../common/meta.dhall
let enum = meta.enum
let no_categories = meta.no_categories
in {
    name = "TesticularDysfunction",
    identifiers = [
        "SCTID:73820008",
        "SCTID:442782008",
        "SCTID:3761000119104"
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