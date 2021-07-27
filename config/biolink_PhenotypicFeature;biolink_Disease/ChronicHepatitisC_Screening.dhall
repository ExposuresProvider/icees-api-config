let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ChronicHepatitisC_Screening",
    identifiers = [
        "SCTID:128302006",
        "SCTID:708198006",
        "SCTID:186640001",
        "MESH:D019698"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:Disease"
        ]
    }
}