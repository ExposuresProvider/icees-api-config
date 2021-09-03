let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "CardiovascularSupporyECLS",
    identifiers = [
        "SNOMED:78823007",
        "SNOMED:243185007",
        "SNOMED:243179000",
        "SNOMED:431267001",
        "SNOMED:718623001",
        "SNOMED:232969009",
        "SNOMED:741679001",
        "SNOMED:341939001",
        "SNOMED:260520002",
        "LOINC:LA25398-1",
        "LOINC:LP262472-6",
        "LOINC:LP186164-2",
        "LOINC:75789-8",
        "LOINC:LA11236-9",
        "LOINC:LA11285-6"
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