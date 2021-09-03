let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "PrimarySclerosingCholangitisDx",
    identifiers = [
        "UMLS:C0566602",
        "UMLS:C4543944",
        "MONDO:0018646",
        "MONDO:0013433",
        "SNOMED:197441003",
        "SNOMED:4032000",
        "SNOMED:735733008",
        "SNOMED:235917005",
        "SNOMED:197442005",
        "SNOMED:17266006",
        "SNOMED:416922008",
        "SNOMED:31712002",
        "SNOMED:724278007",
        "SNOMED:82403002",
        "SNOMED:155831003",
        "SNOMED:71912000",
        "SNOMED:18028001",
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
            "biolink:Disease",
            "biolink:PhenotypicFeature"
        ]
    }
}