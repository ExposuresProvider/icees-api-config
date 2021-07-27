let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs9332131",
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