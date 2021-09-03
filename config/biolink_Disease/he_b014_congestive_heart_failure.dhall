let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_b014_congestive_heart_failure",
    identifiers = [
        "MONDO:0005009",
        "MONDO:0001899",
        "NCIT:C3080",
        "UMLS:C0018802",
        "SNOMED:42343007",
        "SNOMED:10633002",
        "SNOMED:88805009",
        "SNOMED:698594003",
        "SNOMED:195109001",
        "SNOMED:195110006",
        "SNOMED:74960003",
        "SNOMED:5375005",
        "SNOMED:66989003",
        "SNOMED:717840005",
        "SNOMED:67441000119101",
        "SNOMED:67431000119105",
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