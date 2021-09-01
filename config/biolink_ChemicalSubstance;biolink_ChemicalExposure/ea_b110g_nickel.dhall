let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ea_b110g_nickel",
    identifiers = [
        "NCIT:C133964",
        "CHEBI:28112",
        "CHEBI:28112",
        "CHEBI:49423",
        "CHEBI:49786",
        "CHEBI:30399",
        "CHEBI:30679",
        "CHEBI:25516",
        "CHEBI:53001",
        "CHEBI:34887",
        "CHEBI:30372",
        "CHEBI:33748",
        "CHEBI:144804",
        "CHEBI:30375",
        "CHEBI:133340",
        "CHEBI:49928",
        "CHEBI:30392",
        "CHEBI:25519",
        "CHEBI:33362",
        "CHEBI:30373",
        "CHEBI:51188",
        "CHEBI:30388",
        "CHEBI:30389",
        "CHEBI:30386",
        "CHEBI:30390",
        "CHEBI:86151",
        "CHEBI:30368",
        "CHEBI:30387",
        "CHEBI:35439",
        "CHEBI:30369",
        "CHEBI:30391",
        "CHEBI:35438",
        "CHEBI:53437",
        "CHEBI:53504",
        "CHEBI:53542",
        "CHEBI:30374",
        "CHEBI:30394",
        "CHEBI:30393",
        "CHEBI:33747",
        "CHEBI:30071",
        "CHEBI:30370",
        "CHEBI:30070",
        "CHEBI:30381",
        "CHEBI:30382",
        "CHEBI:86149",
        "CHEBI:30384",
        "CHEBI:30385",
        "CHEBI:30380",
        "CHEBI:38076",
        "CHEBI:30379",
        "CHEBI:137678",
        "CHEBI:136841",
        "CHEBI:137696",
        "CHEBI:136887",
        "CHEBI:28265"
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