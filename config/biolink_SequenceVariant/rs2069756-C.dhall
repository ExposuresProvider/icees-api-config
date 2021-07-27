let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs2069756-C",
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