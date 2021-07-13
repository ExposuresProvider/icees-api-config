let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ea_b092e_ethyl_benzene",
    identifiers = [
        "NCIT:C63923",
        "NCIT:C116977",
        "NCIT:C142799",
        "NCIT:C173418",
        "CHEBI:16101"
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