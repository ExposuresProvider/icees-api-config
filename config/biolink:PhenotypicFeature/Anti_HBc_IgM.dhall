let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "Anti_HBc_IgM",
    identifiers = [
        "UMLS:C0948251",
        "SCTID:143335009",
        "SCTID:165947003",
        "SCTID:995951000000103",
        "SCTID:50506008"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}