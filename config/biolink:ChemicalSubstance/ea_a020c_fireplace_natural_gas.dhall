let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let no_identifiers = meta.no_identifiers
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ea_a020c_fireplace_natural_gas",
    identifiers = no_identifiers,
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