let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs36066602-T",
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