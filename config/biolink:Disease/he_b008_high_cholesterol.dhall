let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_b008_high_cholesterol",
    identifiers = [
        "MONDO:0018328",
        "MONDO:0017773",
        "MONDO:0007744",
        "NCIT:C37967",
        "UMLSCUI:C1522133",
        "NCIT:C143368",
        "NCIT:C144030",
        "NCIT:C144578",
        "NCIT:C145195",
        "LOINC:LA10526-4",
        "LOINC:LA16992-2",
        "MESH:D006937",
        "SCITD:13644009",
        "SCITD:102737005",
        "SCITD:28036006",
        "SCITD:1031421000000101",
        "SCITD:707124003",
        "SCITD:707125002"
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