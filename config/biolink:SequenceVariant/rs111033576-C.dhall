let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs111033576-C",
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