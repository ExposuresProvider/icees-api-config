let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_b007a_hypertension_preg",
    identifiers = [
        "MONDO:0005081",
        "MONDO:0024664",
        "MONDO:0011517",
        "NCIT:C4371",
        "UMLS:C1314753",
        "NCIT:C9243",
        "UMLS:C0852260",
        "NCIT:C128009",
        "NCIT:C128010",
        "NCIT:C128011",
        "LOINC:LA19980-4",
        "LOINC:LA19981-2",
        "MESH:D046110",
        "SCITD:288250001",
        "SCITD:82771000119102",
        "SCITD:307632004",
        "SCITD:237279007",
        "SCITD:198969004",
        "SCITD:157038006"
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