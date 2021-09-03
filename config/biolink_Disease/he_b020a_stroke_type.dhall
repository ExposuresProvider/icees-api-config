let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_b020a_stroke_type",
    identifiers = [
        "NCIT:C119579",
        "UMLS:C3897486",
        "NCIT:C116715",
        "UMLS:C3897199",
        "NCIT:C172675",
        "NCIT:C172674",
        "NCIT:C35047",
        "UMLS:C0038819",
        "SNOMED:413758000",
        "SNOMED:16371781000119100",
        "SNOMED:25133001",
        "SNOMED:371041009",
        "SNOMED:111297002",
        "SNOMED:373606000",
        "SNOMED:116288000",
        "SNOMED:371040005",
        "SNOMED:1078001000000105",
        "SNOMED:371121002",
        "SNOMED:195212005",
        "SNOMED:195213000",
        "SNOMED:735907005",
        "SNOMED:230739000",
        "MESH:D000083262",
        "MESH:D000083244",
        "MESH:D018883",
        "MESH:D000083242",
        "MESH:D013474",
        "MONDO:0005098",
        "MONDO:0011057",
        "MONDO:0005264",
        "MONDO:0020671",
        "MONDO:0013792",
        "MONDO:0018752",
        "MONDO:0023642",
        "MONDO:0011729",
        "MONDO:0018585",
        "MONDO:0010789"
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