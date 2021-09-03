let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ea_b110f_mercury",
    identifiers = [
        "NCIT:C133964",
        "CHEBI:16170",
        "CHEBI:16793",
        "CHEBI:33255",
        "CHEBI:25198",
        "CHEBI:30785",
        "CHEBI:49659",
        "CHEBI:49819",
        "CHEBI:36573",
        "CHEBI:49639",
        "CHEBI:50236",
        "CHEBI:25197",
        "CHEBI:83725",
        "CHEBI:30786",
        "CHEBI:31823",
        "CHEBI:33204",
        "CHEBI:33211",
        "CHEBI:49747",
        "CHEBI:50237",
        "MONDO:0018020",
        "CHEBI:25196",
        "CHEBI:30787",
        "CHEBI:39152",
        "CHEBI:134744",
        "CHEBI:28216",
        "CHEBI:33050",
        "CHEBI:33210",
        "CHEBI:36574",
        "CHEBI:49727",
        "CHEBI:27684",
        "CHEBI:49823",
        "CHEBI:25322",
        "CHEBI:25706",
        "CHEBI:34277",
        "CHEBI:51568",
        "CHEBI:28886",
        "CHEBI:33206",
        "CHEBI:36561",
        "CHEBI:146200",
        "CHEBI:28420",
        "CHEBI:49644",
        "MONDO:0016588",
        "MONDO:0016013",
        "CHEBI:33214",
        "CHEBI:49484",
        "CHEBI:9546",
        "CHEBI:33269",
        "CHEBI:59445",
        "CHEBI:59455",
        "CHEBI:59462",
        "CHEBI:6763",
        "CHEBI:90221",
        "CHEBI:90220",
        "CHEBI:60168"
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