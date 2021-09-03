let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_c023a_hyperthyroidism",
    identifiers = [
        "SNOMED:34486009",
        "SNOMED:722942005",
        "SNOMED:722941003",
        "SNOMED:427970008",
        "SNOMED:161442007",
        "SNOMED:10754921000119106",
        "SNOMED:138714009",
        "MESH:D006980",
        "MESH:C566384",
        "MESH:D007037",
        "MESH:D003409",
        "MESH:C562768",
        "LOINC:LP74943-9",
        "LOINC:45637-6",
        "LOINC:LA14302-6",
        "LOINC:LA27854-1",
        "NCIT:C3123",
        "UMLS:C0020550",
        "NCIT:C143560",
        "NCIT:C129635",
        "NCIT:C113145",
        "NCIT:C3714618",
        "MONDO:0005364",
        "MONDO:0001555",
        "MONDO:0010138",
        "MONDO:0012203",
        "MONDO:0011309",
        "MONDO:0014448",
        "MONDO:0007784"
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