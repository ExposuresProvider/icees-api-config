let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "NeurologicalDiseaseDx",
    identifiers = [
        "UMLS:C0519036",
        "UMLS:C1319811",
        "UMLS:C0343747",
        "UMLS:C1518909",
        "UMLS:C4076090",
        "UMLS:C4076283",
        "UMLS:C4076255",
        "UMLS:C4075689",
        "UMLS:C4076115",
        "UMLS:C4076105",
        "UMLS:C4075921",
        "UMLS:C4075966",
        "UMLS:C4076016",
        "UMLS:C4076119",
        "NCIT:C86983",
        "MONDO:0005071",
        "MONDO:0019632",
        "LOINC:LA28292-3",
        "LOINC:LA22092-3",
        "LOINC:LA10590-0",
        "LOINC:LA7458-8",
        "LOINC:LA28880-5",
        "MESH:D009422",
        "SNOMED:407624006",
        "SNOMED:724824002",
        "SNOMED:100041000000105",
        "SNOMED:95161000000107",
        "SNOMED:240672009",
        "IC10:G93.%",
        "IC10:Z82.%"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:Disease"
        ]
    }
}