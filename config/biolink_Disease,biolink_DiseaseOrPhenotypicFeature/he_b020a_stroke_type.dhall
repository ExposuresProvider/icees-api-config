let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_b020a_stroke_type",
    identifiers = [
        "NCIT:C119579",
        "UMLSCUI:C3897486",
        "NCIT:C116715",
        "UMLSCUI:C3897199",
        "NCIT:C172675",
        "NCIT:C172674",
        "NCIT:C35047",
        "UMLSCUI:C0038819",
        "SCITD:413758000",
        "SCITD:16371781000119100",
        "SCITD:25133001",
        "SCITD:371041009",
        "SCITD:111297002",
        "SCITD:373606000",
        "SCITD:116288000",
        "SCITD:371040005",
        "SCITD:1078001000000105",
        "SCITD:371121002",
        "SCITD:195212005",
        "SCITD:195213000",
        "SCITD:735907005",
        "SCITD:230739000",
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
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    },
    binning_strategy = max_cutoff 2
}