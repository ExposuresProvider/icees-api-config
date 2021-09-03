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
        "SNOMED:288250001",
        "SNOMED:82771000119102",
        "SNOMED:307632004",
        "SNOMED:237279007",
        "SNOMED:198969004",
        "SNOMED:157038006"
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