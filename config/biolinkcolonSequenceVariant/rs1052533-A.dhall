let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs1052533-A",
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