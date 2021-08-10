let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "CardiovascularSupportLevosimendan_gtt",
    identifiers = [
        "CHEBI:50567",
        "PUBCHEM.COMPOUND:3033825",
        "PUBCHEM.COMPOUND:161928",
        "NCIT:C174653",
        "RxNorm:73107",
        "RxNorm:901046",
        "RxNorm:1164037",
        "RxNorm:901045",
        "RxNorm:901047",
        "SCTID:442795003",
        "SCTID:442790008",
        "SCTID:776525007",
        "SCTID:30137411000001102",
        "SCTID:786238006",
        "SCTID:442874003"
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