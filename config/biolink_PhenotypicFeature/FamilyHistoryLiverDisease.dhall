let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "FamilyHistoryLiverDisease",
    identifiers = [
        "UMLS:C0455417",
        "SCTID:266902008"
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