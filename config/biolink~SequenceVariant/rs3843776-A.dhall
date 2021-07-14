let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs3843776-A",
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