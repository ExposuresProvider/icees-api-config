let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs5030718-A",
    feature = {
        feature_type = enum [
            "ZeroCopies",
            "OneCopy",
            "TwoCopies"
        ],
        categories = [
            "biolink:SequenceVariant"
        ]
    }
}