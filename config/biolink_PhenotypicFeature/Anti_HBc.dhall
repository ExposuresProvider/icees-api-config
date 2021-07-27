let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "Anti_HBc",
    identifiers = [
        "UMLS:C0948251",
        "SCTID:82409003"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}