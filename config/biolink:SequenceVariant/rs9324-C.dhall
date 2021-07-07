let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs9324-C",
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