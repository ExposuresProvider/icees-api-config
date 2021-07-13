let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "AntiInfectivesRemdesivir",
    identifiers = [
        "NCIT:C152185",
        "UMLSCUI:CL553517",
        "PUBCHEM:121304016",
        "RxNorm:2284718",
        "RxNorm:2284959",
        "RxNorm:2284957",
        "RxNorm:2395500",
        "RxNorm:2284958",
        "RxNorm:2367757",
        "RxNorm:2284960",
        "RxNorm:2395499",
        "RxNorm:2367759",
        "RxNorm:2395503",
        "RxNorm:2395502",
        "RxNorm:2395505",
        "RxNorm:2367758"
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