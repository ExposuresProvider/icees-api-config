let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "rs10997860-C",
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