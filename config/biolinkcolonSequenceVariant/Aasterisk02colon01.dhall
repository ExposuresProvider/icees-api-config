let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "A*02:01",
    identifiers = [
        "MESH:C435939",
        "MESH:C520558",
        "MESH:C520984"
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