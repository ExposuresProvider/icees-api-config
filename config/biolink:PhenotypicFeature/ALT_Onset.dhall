let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "ALT_Onset",
    identifiers = [
        "UMLS:C2749273",
        "UMLS:C1832768",
        "UMLS:C2750687",
        "UMLS:C1834685",
        "UMLS:C3550501",
        "UMLS:C1834380",
        "UMLS:C3809062",
        "UMLS:C4231263",
        "UMLS:C3806477",
        "UMLS:C1300107",
        "MONDO:0018485",
        "MONDO:0017694"
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}