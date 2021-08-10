let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ea_b092b_chloroform",
    identifiers = [
        "CHEBI:35255",
        "CHEBI:85365",
        "CHEBI:134813",
        "CHEBI:82274",
        "CHEBI:36015",
        "CHEBI:48236",
        "CHEBI:29365",
        "CHEBI:34576",
        "PUBCHEM.COMPOUND:6212"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    },
    binning_strategy = max_cutoff 2
}