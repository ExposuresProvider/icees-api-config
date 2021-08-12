let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_a004a_birth_low_bw",
    identifiers = [
        "NCIT:C34724",
        "UMLS:C0024032",
        "NCIT:C114935",
        "UMLS:C0282666",
        "NCIT:C114936",
        "UMLS:C0456065",
        "MONDO:0005030",
        "MONDO:0008871",
        "MONDO:0016994",
        "MONDO:0009127",
        "MESH:D007230",
        "MESH:D052577",
        "LOINC:LA25802-2",
        "SCITD:276610007",
        "SCITD:206172000",
        "SCITD:206174004",
        "SCITD:276612004",
        "SCITD:276611006",
        "SCITD:206620009",
        "SCITD:462211000000101"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    },
    binning_strategy = max_cutoff 2
}