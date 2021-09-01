let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs2736726-T",
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