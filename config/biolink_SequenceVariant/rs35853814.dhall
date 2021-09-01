let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs35853814",
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