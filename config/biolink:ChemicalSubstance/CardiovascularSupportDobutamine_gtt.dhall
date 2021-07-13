let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "CardiovascularSupportDobutamine_gtt",
    identifiers = [
        "CHEBI:4670",
        "CHEBI:4671",
        "PUBCHEM:36811",
        "NCIT:C61733",
        "UMLSCUI:C0012963",
        "NCIT:C171751",
        "NCIT:C28997",
        "UMLSCUI:C0700450",
        "NCIT:C65452",
        "UMLSCUI:C0887392",
        "SCTID:387145002",
        "SCTID:3528911000001100",
        "SCTID:26523005",
        "SCTID:90118002",
        "SCTID:121557002",
        "SCTID:319502004",
        "SCTID:775668005",
        "RxNorm:3616",
        "RxNorm:1812167",
        "RxNorm:203121",
        "RxNorm:374370",
        "RxNorm:328216",
        "RxNorm:328218",
        "RxNorm:328215",
        "RxNorm:345811",
        "LOINC:LP46807-1"
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
    },
    binning_strategy = max_cutoff 2
}