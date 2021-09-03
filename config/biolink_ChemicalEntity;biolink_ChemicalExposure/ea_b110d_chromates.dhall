let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ea_b110d_chromates",
    identifiers = [
        "NCIT:C133964",
        "CHEBI:35404",
        "CHEBI:33141",
        "CHEBI:78671",
        "CHEBI:33144",
        "CHEBI:39483",
        "CHEBI:86257",
        "CHEBI:75249",
        "CHEBI:33142",
        "CHEBI:30072",
        "CHEBI:33037",
        "CHEBI:53444",
        "CHEBI:30073",
        "CHEBI:33048",
        "CHEBI:30640",
        "CHEBI:33045",
        "CHEBI:33046",
        "CHEBI:33047",
        "CHEBI:30723",
        "CHEBI:33029",
        "CHEBI:33032",
        "CHEBI:33042",
        "CHEBI:33043",
        "CHEBI:30722",
        "CHEBI:33039",
        "CHEBI:33040",
        "CHEBI:51547",
        "CHEBI:30724",
        "CHEBI:51556",
        "CHEBI:33143",
        "CHEBI:23234"
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