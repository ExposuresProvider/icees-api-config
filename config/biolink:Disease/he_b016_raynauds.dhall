let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_b016_raynauds",
    identifiers = [
        "MESH:D011928",
        "SCITD:22954002",
        "SCITD:195295006",
        "SCITD:195296007",
        "SCITD:266261006",
        "SCITD:73483003",
        "SCITD:403674007",
        "LOINC:67732-8"
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