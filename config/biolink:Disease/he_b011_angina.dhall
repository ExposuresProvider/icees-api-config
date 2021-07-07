let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_b011_angina",
    identifiers = [
        "MONDO:0006576",
        "MONDO:0006021",
        "MONDO:0006805",
        "MONDO:0006865",
        "MONDO:0005810",
        "MONDO:0015306",
        "MONDO:0021758",
        "MONDO:0021783",
        "MONDO:0020860",
        "NCIT:C51221",
        "UMLSCUI:C0002962",
        "NCIT:C66915",
        "UMLSCUI:C0002963",
        "NCIT:C66911",
        "UMLSCUI:C0002965",
        "NCIT:C66914",
        "UMLSCUI:C0340288",
        "NCIT:C80382",
        "UMLSCUI:C0741026",
        "SCITD:155307004",
        "SCITD:87343002",
        "SCITD:241154007",
        "SCITD:196542004",
        "SCITD:371807002",
        "SCITD:35928006",
        "SCITD:371806006",
        "SCITD:315025001",
        "SCITD:233819005",
        "SCITD:429559004",
        "SCITD:275121006",
        "SCITD:240342007",
        "SCITD:155312003",
        "SCITD:194838005",
        "SCITD:186960006",
        "SCITD:155309001",
        "SCITD:194818009",
        "SCITD:59021001",
        "SCITD:64333001",
        "SCITD:186358002"
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