let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "CardiovascularSupportIsoproterenol_gtt",
    identifiers = [
        "CHEBI:64317",
        "CHEBI:6257",
        "CHEBI:8463",
        "CHEBI:4285",
        "CHEBI:31453",
        "MONDO:0010937",
        "PUBCHEM.COMPOUND:3779",
        "NCIT:C62041",
        "UMLS:C0022245",
        "NCIT:C29133",
        "UMLS:C0282210",
        "NCIT:C65983",
        "UMLS:C0282211",
        "RxNorm:6054",
        "RxNorm:1667908",
        "RxNorm:82030",
        "RxNorm:82031",
        "RxNorm:1159749",
        "RxNorm:335068",
        "RxNorm:2108199",
        "RxNorm:370718",
        "RxNorm:1667910",
        "RxNorm:372518",
        "RxNorm:847563",
        "RxNorm:372517",
        "RxNorm:440849",
        "RxNorm:1159746",
        "RxNorm:1159747",
        "RxNorm:1159748",
        "RxNorm:1295266",
        "RxNorm:1159750",
        "RxNorm:329888",
        "RxNorm:329890",
        "RxNorm:353572",
        "RxNorm:377288",
        "RxNorm:1299769",
        "RxNorm:1299772",
        "RxNorm:1299797",
        "RxNorm:2108205",
        "RxNorm:1299671",
        "SCTID:372781009",
        "SCTID:349931000"
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