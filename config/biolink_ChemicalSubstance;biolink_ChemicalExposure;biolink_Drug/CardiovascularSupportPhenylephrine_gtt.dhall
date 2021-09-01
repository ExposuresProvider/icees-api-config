let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "CardiovascularSupportPhenylephrine_gtt",
    identifiers = [
        "PUBCHEM.COMPOUND:6102",
        "CHEBI:8093",
        "CHEBI:134779",
        "CHEBI:91518",
        "CHEBI:132294",
        "CHEBI:8094",
        "NCIT:C62067",
        "UMLS:C0031469",
        "NCIT:C91075",
        "UMLS:C1703892",
        "NCIT:C29363",
        "UMLS:C0031470",
        "NCIT:C66378",
        "UMLS:C0304428",
        "NCIT:C29362",
        "UMLS:C1445789",
        "SNOMED:372771005",
        "SNOMED:54765002",
        "SNOMED:105297002",
        "SNOMED:19807811000001104",
        "SNOMED:14797011000001106",
        "SNOMED:24408211000001106",
        "SNOMED:8528911000001104",
        "SNOMED:13859511000001102",
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