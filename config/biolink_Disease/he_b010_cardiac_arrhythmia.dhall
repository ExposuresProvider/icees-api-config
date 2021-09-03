let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
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
        "UMLS:C0003811",
        "NCIT:C53784",
        "UMLS:C1560249",
        "NCIT:C54786",
        "UMLS:C1560250",
        "NCIT:C54817",
        "UMLS:C1560251",
        "NCIT:C54849",
        "UMLS:C1560252",
        "NCIT:C54911",
        "UMLS:C1560254",
        "NCIT:C54880",
        "UMLS:C1560253",
        "NCIT:C54775",
        "UMLS:C0494598",
        "SNOMED:698247007",
        "SNOMED:131471000119104",
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
            "biolink:Disease"
        ]
    },
    binning_strategy = max_cutoff 2
}