let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "Hemochromatosis",
    identifiers = [
        "UMLS:C0018995",
        "UMLS:C3544221",
        "UMLS:C0268061",
        "MESH:D000071020",
        "UMLS:C0392514",
        "UMLS:C3711388",
        "OMIM:602390",
        "UMLS:C2025293",
        "UMLS:C1865614",
        "UMLS:C0268064",
        "UMLS:C3494868",
        "UMLS:C0268062",
        "UMLS:C1276030",
        "UMLS:C1414833",
        "UMLS:C4305474",
        "UMLS:C4544518",
        "UMLS:C0264819",
        "UMLS:C0264843",
        "UMLS:C4076065",
        "UMLS:C3150339"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:Disease",
            "biolink:PhenotypicFeature"
        ]
    }
}