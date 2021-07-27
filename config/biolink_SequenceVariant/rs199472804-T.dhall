let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs199472804-T",
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