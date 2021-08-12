let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_d026_ipf",
    identifiers = [
        "NCIT:C35716",
        "UMLS:C1800706",
        "SCITD:700250006",
        "SCITD:426437004",
        "SCITD:708537005",
        "SCITD:700252003",
        "SCITD:700251005",
        "SCITD:789574002",
        "SCITD:28168000",
        "MESH:D054990",
        "MESH:D011658",
        "MESH:C536281",
        "LOINC:LP128703-8",
        "LOINC:66619-8",
        "MONDO:0008345",
        "MONDO:0002429",
        "MONDO:0019203"
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