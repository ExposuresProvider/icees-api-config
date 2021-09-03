let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ea_b116d_butanol",
    identifiers = [
        "CHEBI:35687",
        "CHEBI:45475",
        "CHEBI:45895",
        "CHEBI:46645",
        "CHEBI:28885",
        "CHEBI:22950",
        "CHEBI:134813",
        "CHEBI:41268",
        "CHEBI:88390",
        "CHEBI:35686",
        "CHEBI:15688",
        "CHEBI:42639",
        "CHEBI:87381",
        "CHEBI:15837",
        "CHEBI:77518",
        "CHEBI:53449",
        "CHEBI:48945",
        "CHEBI:61368",
        "CHEBI:132750",
        "CHEBI:143852",
        "CHEBI:77517",
        "CHEBI:138440",
        "CHEBI:85235",
        "CHEBI:50625",
        "CHEBI:2691",
        "CHEBI:50585",
        "CHEBI:91275",
        "CHEBI:31725",
        "CHEBI:87296",
        "CHEBI:62995",
        "CHEBI:584020",
        "CHEBI:4877",
        "CHEBI:4638",
        "CHEBI:4878",
        "CHEBI:141413",
        "CHEBI:51173",
        "CHEBI:8498",
        "CHEBI:45307",
        "CHEBI:142835",
        "CHEBI:3216",
        "CHEBI:652822"
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