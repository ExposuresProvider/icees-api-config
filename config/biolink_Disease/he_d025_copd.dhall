let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_d025_copd",
    identifiers = [
        "MONDO:0011751",
        "MONDO:0005002",
        "NCIT:C3199",
        "UMLS:C0024117",
        "LOINC:LA28200-6",
        "LOINC:LA27422-7",
        "LOINC:LA27514-1",
        "LOINC:LA27872-3",
        "LOINC:45670-7",
        "SNOMED:171230000",
        "SNOMED:204991000000107",
        "SNOMED:390891009",
        "SNOMED:313296004",
        "SNOMED:313297008",
        "SNOMED:313299006",
        "SNOMED:155582008",
        "SNOMED:195996000",
        "SNOMED:155583003",
        "SNOMED:195997009"
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