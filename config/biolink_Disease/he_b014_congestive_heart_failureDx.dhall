let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_b014_congestive_heart_failureDx",
    identifiers = [
        "MONDO:0005009",
        "MONDO:0001899",
        "NCIT:C3080",
        "UMLSCUI:C0018802",
        "SCITD:42343007",
        "SCITD:10633002",
        "SCITD:88805009",
        "SCITD:698594003",
        "SCITD:195109001",
        "SCITD:195110006",
        "SCITD:74960003",
        "SCITD:5375005",
        "SCITD:66989003",
        "SCITD:717840005",
        "SCITD:67441000119101",
        "SCITD:67431000119105",
        "MESH:D006333",
        "MESH:D054144",
        "MESH:D054143",
        "LOINC:LP74648-4",
        "LOINC:LA12740-9",
        "LOINC:LA25635-6",
        "LOINC:LA27840-0"
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