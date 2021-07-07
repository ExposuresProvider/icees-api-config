let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_d024_allergies",
    identifiers = [
        "MONDO:0005659",
        "MONDO:0005709",
        "MONDO:0011786",
        "MONDO:0004514",
        "MONDO:0005324",
        "MONDO:0024332",
        "MONDO:0012577",
        "MONDO:0007817",
        "MESH:D065631",
        "MESH:D006255",
        "MESH:D012221",
        "MESH:C567078"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}