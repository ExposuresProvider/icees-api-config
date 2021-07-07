let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs2781377-A",
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