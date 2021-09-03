let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ea_b116a_isopropanol",
    identifiers = [
        "CHEBI:17824",
        "CHEBI:84894",
        "CHEBI:19030",
        "CHEBI:76260",
        "CHEBI:76336",
        "CHEBI:143266",
        "CHEBI:131607",
        "CHEBI:63104",
        "CHEBI:18917",
        "CHEBI:131518",
        "CHEBI:139496",
        "CHEBI:6794"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalEntity",
            "biolink:ChemicalExposure"
        ]
    },
    binning_strategy = max_cutoff 2
}