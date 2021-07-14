let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "PrimarySclerosingCholangitis",
    identifiers = [
        "UMLS:C0566602",
        "UMLS:C4543944",
        "MONDO:0018646",
        "MONDO:0013433",
        "SCITD:197441003",
        "SCITD:4032000",
        "SCITD:735733008",
        "SCITD:235917005",
        "SCITD:197442005",
        "SCITD:17266006",
        "SCITD:416922008",
        "SCITD:31712002",
        "SCITD:724278007",
        "SCITD:82403002",
        "SCITD:155831003",
        "SCITD:71912000",
        "SCITD:18028001",
        "MESH:C536419",
        "MESH:D015209",
        "MESH:C564365",
        "MESH:D002761",
        "MESH:D047868",
        "MESH:D013344",
        "MESH:D018219",
        "MESH:C562824",
        "ICD10:K83.%"
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