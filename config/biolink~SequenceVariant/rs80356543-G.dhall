let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs80356543-G",
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