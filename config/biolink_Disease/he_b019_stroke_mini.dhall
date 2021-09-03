let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_b019_stroke_mini",
    identifiers = [
        "MONDO:0005264",
        "NCIT:C50781",
        "UMLS:C0007787",
        "NCIT:C143886",
        "NCIT:C144443",
        "NCIT:C145048",
        "SNOMED:473129008",
        "SNOMED:161511000",
        "SNOMED:230716006",
        "SNOMED:705146005",
        "SNOMED:413124000",
        "SNOMED:230717002",
        "SNOMED:160363004",
        "SNOMED:415630002",
        "SNOMED:140221000119109",
        "SNOMED:457991000124100",
        "LOINC:LP75781-2",
        "LOINC:LA14278-8",
        "LOINC:LA27859-0",
        "LOINC:45663-2",
        "LOINC:LP90026-3",
        "LOINC:LA28846-6",
        "LOINC:54807-3",
        "LOINC:LP230008-7",
        "MESH:D002546",
        "MESH:D019194"
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