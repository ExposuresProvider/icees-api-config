let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_b013_coronary_artery",
    identifiers = [
        "LOINC:LP207937-6",
        "LOINC:LA25636-4",
        "MESH:D003324",
        "MESH:D003327",
        "SCITD:8957000",
        "SCITD:194841001",
        "SCITD:420006002",
        "SCITD:240567009",
        "SCITD:371804009",
        "SCITD:371803003",
        "SCITD:373144005",
        "SCITD:373146007",
        "SCITD:459701000124101",
        "NCIT:C26732",
        "UMLSCUI:CC1956346",
        "NCIT:C99968",
        "UMLSCUI:CC3275096",
        "MONDO:0005010",
        "MONDO:0012585",
        "MONDO:0012586",
        "MONDO:0013765",
        "MONDO:0012011",
        "MONDO:0012147",
        "MONDO:0011817",
        "MONDO:0021661",
        "MONDO:0018473",
        "MONDO:0014352"
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