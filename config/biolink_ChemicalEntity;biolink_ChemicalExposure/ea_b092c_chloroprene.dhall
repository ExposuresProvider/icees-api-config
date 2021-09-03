let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ea_b092c_chloroprene",
    identifiers = [
        "PUBCHEM.COMPOUND:31369",
        "CHEBI:39481",
        "CHEBI:60505",
        "UMLS:C0008267",
        "NCIT:C44356"
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