let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs35271262-T",
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