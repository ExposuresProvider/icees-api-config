let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "CRRT_HD",
    identifiers = [
        "MONDO:000153",
        "MONDO:0019440",
        "MONDO:0009133",
        "RxNorm:3310",
        "RxNorm:283846",
        "RxNorm:241953",
        "RxNorm:241794",
        "RxNorm:375498",
        "RxNorm:334307",
        "RxNorm:334308",
        "RxNorm:334309",
        "SCTID:265764009",
        "SCTID:108241001",
        "NCIT:C15221",
        "UMLSCUI:C0011946",
        "NCIT:C15248",
        "UMLSCUI:C0019004"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    }
}