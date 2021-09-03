let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
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
        "UMLS:C0002962",
        "NCIT:C66915",
        "UMLS:C0002963",
        "NCIT:C66911",
        "UMLS:C0002965",
        "NCIT:C66914",
        "UMLS:C0340288",
        "NCIT:C80382",
        "UMLS:C0741026",
        "SNOMED:155307004",
        "SNOMED:87343002",
        "SNOMED:241154007",
        "SNOMED:196542004",
        "SNOMED:371807002",
        "SNOMED:35928006",
        "SNOMED:371806006",
        "SNOMED:315025001",
        "SNOMED:233819005",
        "SNOMED:429559004",
        "SNOMED:275121006",
        "SNOMED:240342007",
        "SNOMED:155312003",
        "SNOMED:194838005",
        "SNOMED:186960006",
        "SNOMED:155309001",
        "SNOMED:194818009",
        "SNOMED:59021001",
        "SNOMED:64333001",
        "SNOMED:186358002"
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