let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "StevensJohnsonSyndrome",
    identifiers = [
        "NCIT:C143859",
        "NCIT:C145642",
        "NCIT:C146566",
        "NCIT:C146134",
        "UMLS:C1274933",
        "UMLS:C3658302",
        "UMLS:C3661878",
        "UMLS:C0236036",
        "UMLS:C4518364",
        "NCIT:C58011",
        "NCIT:C57946",
        "NCIT:C57969",
        "NCIT:C57982",
        "NCIT:C57993",
        "MONDO:0018229",
        "MONDO:0044739",
        "MONDO:0019810",
        "MESH:D013262",
        "SCTID:73442001",
        "ICD9:695.%"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}