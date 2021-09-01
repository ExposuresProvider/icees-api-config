let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs12348360-C",
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