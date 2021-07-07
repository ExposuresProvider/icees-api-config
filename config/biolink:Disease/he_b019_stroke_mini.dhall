let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_b019_stroke_mini",
    identifiers = [
        "MONDO:0005264",
        "NCIT:C50781",
        "UMLSCUI:C0007787",
        "NCIT:C143886",
        "NCIT:C144443",
        "NCIT:C145048",
        "SCITD:473129008",
        "SCITD:161511000",
        "SCITD:230716006",
        "SCITD:705146005",
        "SCITD:413124000",
        "SCITD:230717002",
        "SCITD:160363004",
        "SCITD:415630002",
        "SCITD:140221000119109",
        "SCITD:457991000124100",
        "LOINC:LP75781-2",
        "LOINC:LA14278-8",
        "LOINC:LA27859-0",
        "LOINC:45663-2",
        "LOINC:LP90026-3",
        "LOINC:LA28846-6",
        "LOINC:54807-3",
        "LOINC:LP230008-7",
        "MESH:D002546",
        "MESH:D019194"
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