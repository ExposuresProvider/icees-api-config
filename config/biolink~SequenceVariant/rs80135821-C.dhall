let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs80135821-C",
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