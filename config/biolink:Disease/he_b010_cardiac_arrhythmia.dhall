let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_b010_cardiac_arrhythmia",
    identifiers = [
        "MONDO:0012061",
        "MONDO:0020745",
        "MONDO:0010958",
        "MONDO:0054866",
        "MONDO:0014953",
        "MONDO:0014500",
        "MONDO:0010457",
        "MONDO:0014782",
        "MONDO:0014812",
        "MONDO:0014957",
        "NCIT:C2881",
        "UMLSCUI:C0003811",
        "NCIT:C53784",
        "UMLSCUI:C1560249",
        "NCIT:C54786",
        "UMLSCUI:C1560250",
        "NCIT:C54817",
        "UMLSCUI:C1560251",
        "NCIT:C54849",
        "UMLSCUI:C1560252",
        "NCIT:C54911",
        "UMLSCUI:C1560254",
        "NCIT:C54880",
        "UMLSCUI:C1560253",
        "NCIT:C54775",
        "UMLSCUI:C0494598",
        "SCITD:698247007",
        "SCITD:131471000119104",
        "LOINC:LA15419-7",
        "LOINC:LA22197-0",
        "LOINC:LA7414-1",
        "MESH:C566996",
        "MESH:D001145"
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