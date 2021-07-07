let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs35993958-A",
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