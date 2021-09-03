let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "eb_a010_calcium",
    identifiers = [
        "LOINC:LP72204-8",
        "LOINC:LP102624-6",
        "LOINC:35264-1",
        "LOINC:9051-4",
        "LOINC:LP111162-6",
        "MESH:D019355",
        "MESH:D002129",
        "MESH:D000077250",
        "MESH:D002122",
        "MESH:C042131",
        "MESH:D002124",
        "MESH:D002126",
        "SNOMED:230122008",
        "SNOMED:390070000",
        "SNOMED:389337007"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalEntity",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    },
    binning_strategy = max_cutoff 2
}