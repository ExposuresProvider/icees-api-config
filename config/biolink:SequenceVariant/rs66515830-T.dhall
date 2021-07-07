let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs66515830-T",
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