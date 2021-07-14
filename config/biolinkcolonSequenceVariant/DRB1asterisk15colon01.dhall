let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "DRB1*15:01",
    identifiers = [
        "MESH:C489631"
    ],
    feature = {
        feature_type = enum [
            "NoCopies",
            "OneCopy",
            "TwoCopies"
        ],
        categories = [
            "biolink:SequenceVariant"
        ]
    }
}