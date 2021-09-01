let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs12953717-T",
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