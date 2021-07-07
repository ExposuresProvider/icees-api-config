let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "AutoimmuneHepatitis",
    identifiers = [
        "UMLS:C4231138",
        "MONDO:0016264",
        "MONDO:0005543",
        "MONDO:0021176",
        "MONDO:0021177"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}