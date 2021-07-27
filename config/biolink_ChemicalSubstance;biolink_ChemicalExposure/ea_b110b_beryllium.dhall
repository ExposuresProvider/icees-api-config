let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ea_b110b_beryllium",
    identifiers = [
        "NCIT:C133964",
        "CHEBI:33783",
        "CHEBI:52628",
        "CHEBI:62842",
        "CHEBI:30502",
        "CHEBI:30503",
        "CHEBI:39133",
        "CHEBI:33785",
        "CHEBI:49499",
        "CHEBI:30504",
        "CHEBI:33787",
        "CHEBI:39132",
        "CHEBI:53473",
        "CHEBI:62843",
        "CHEBI:33790",
        "CHEBI:33780",
        "CHEBI:35102",
        "CHEBI:35103",
        "CHEBI:35151",
        "CHEBI:30505",
        "CHEBI:30500",
        "CHEBI:30506",
        "CHEBI:51180",
        "CHEBI:30498",
        "CHEBI:30497",
        "CHEBI:53502",
        "CHEBI:33782"
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