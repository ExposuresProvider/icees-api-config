let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs1437135-G",
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