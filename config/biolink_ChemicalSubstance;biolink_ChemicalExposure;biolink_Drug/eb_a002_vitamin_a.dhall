let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "eb_a002_vitamin_a",
    identifiers = [
        "CHEBI:17336",
        "CHEBI:12777",
        "MESH:D014802",
        "MESH:D014801",
        "LOINC:LP31687-4",
        "SNOMED:36922411000001109",
        "SNOMED:3270000007",
        "SNOMED:3438501000124103",
        "SNOMED:331109009"
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