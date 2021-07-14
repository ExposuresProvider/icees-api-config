let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs34869277-A",
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