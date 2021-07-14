let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs11574936-A",
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