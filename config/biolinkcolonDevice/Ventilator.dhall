let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Ventilator",
    identifiers = [
        "NCIT:C38388",
        "UMLSCUI:C0087153",
        "NCIT:C50430",
        "UMLSCUI:C0750173",
        "NCIT:C123909",
        "UMLSCUI:C4086945",
        "LOINC:LA25410-4",
        "LOINC:LP7706-7",
        "LOINC:LA11275-7",
        "SCTID:706172005",
        "SCTID:470320000",
        "SCTID:409025002"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Device"
        ]
    },
    binning_strategy = max_cutoff 2
}