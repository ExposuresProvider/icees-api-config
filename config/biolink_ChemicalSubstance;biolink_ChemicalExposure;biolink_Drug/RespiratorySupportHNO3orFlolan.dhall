let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "RespiratorySupportHNO3orFlolan",
    identifiers = [
        "NCIT:C47514",
        "UMLSCUI:C0354594",
        "CHEBI:15552",
        "RxNorm:114221",
        "RxNorm:1169774",
        "RxNorm:362748",
        "RxNorm:211199",
        "RxNorm:211200",
        "RxNorm:1789861",
        "RxNorm:1789860",
        "RxNorm:1789872",
        "RxNorm:544927",
        "RxNorm:544926",
        "RxNorm:544929",
        "RxNorm:571655",
        "RxNorm:571656",
        "RxNorm:544928",
        "RxNorm:544930",
        "SCTID:9454801000001106",
        "SCTID:4627711000001106",
        "SCTID:33592511000001102",
        "SCTID:4627411000001100",
        "SCTID:33593311000001103",
        "SCTID:4627811000001103",
        "SCTID:33592611000001103",
        "SCTID:4627511000001101",
        "SCTID:33593511000001109",
        "PUBCHEM:53394235",
        "PUBCHEM:23695838",
        "PUBCHEM:6364626",
        "PUBCHEM:5282411"
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