let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_b012_heart_attack",
    identifiers = [
        "MONDO:0005068",
        "NCIT:C27996",
        "UMLSCUI:C0027051",
        "SCITD:233824008",
        "MESH:D009203",
        "MESH:D006333",
        "MESH:D011660",
        "MESH:D002275",
        "MESH:D054144",
        "MESH:D054143",
        "MESH:C535758",
        "LOINC:LA16286-9",
        "LOINC:LA10558-7",
        "LOINC:LA28843-3",
        "LOINC:LA15807-3"
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