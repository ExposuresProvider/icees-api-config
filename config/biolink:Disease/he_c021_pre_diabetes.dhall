let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_c021_pre_diabetes",
    identifiers = [
        "MONDO:0006920",
        "SCITD:714628002",
        "SCITD:15777000",
        "MESH:D011236"
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