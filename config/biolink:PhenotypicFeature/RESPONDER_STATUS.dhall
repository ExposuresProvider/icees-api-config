let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "RESPONDER_STATUS",
    feature = {
        feature_type = enum [
            "Neither",
            "Hyper",
            "Hypo",
            "Super Hypo"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}