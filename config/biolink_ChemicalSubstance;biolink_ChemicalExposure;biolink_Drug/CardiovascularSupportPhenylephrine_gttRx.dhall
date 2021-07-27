let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "CardiovascularSupportPhenylephrine_gttRx",
    identifiers = [
        "PUBCHEM:6102",
        "CHEBI:8093",
        "CHEBI:134779",
        "CHEBI:91518",
        "CHEBI:132294",
        "CHEBI:8094",
        "NCIT:C62067",
        "UMLSCUI:C0031469",
        "NCIT:C91075",
        "UMLSCUI:C1703892",
        "NCIT:C29363",
        "UMLSCUI:C0031470",
        "NCIT:C66378",
        "UMLSCUI:C0304428",
        "NCIT:C29362",
        "UMLSCUI:C1445789",
        "SCTID:372771005",
        "SCTID:54765002",
        "SCTID:105297002",
        "SCTID:19807811000001104",
        "SCTID:14797011000001106",
        "SCTID:24408211000001106",
        "SCTID:8528911000001104",
        "SCTID:13859511000001102",
        "LOINC:LP16252-6",
        "LOINC:LP392396-0",
        "RxNorm:8163",
        "RxNorm:1666371",
        "RxNorm:1158152",
        "RxNorm:543153",
        "RxNorm:707395",
        "RxNorm:328833",
        "RxNorm:809130",
        "RxNorm:316508",
        "RxNorm:331191",
        "RxNorm:373368",
        "RxNorm:373369"
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