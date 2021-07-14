let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs11559052-G",
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