let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "QXAGE",
    feature = {
        feature_type = enum [
            "0-2",
            "3-17",
            "18-34",
            "35-50",
            "51-69",
            "70-89"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}