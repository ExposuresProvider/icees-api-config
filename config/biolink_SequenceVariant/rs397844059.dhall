let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs397844059",
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