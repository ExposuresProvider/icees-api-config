let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "Anti_HBc_IgM",
    identifiers = [
        "UMLS:C0948251",
        "SNOMED:143335009",
        "SNOMED:165947003",
        "SNOMED:995951000000103",
        "SNOMED:50506008"
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