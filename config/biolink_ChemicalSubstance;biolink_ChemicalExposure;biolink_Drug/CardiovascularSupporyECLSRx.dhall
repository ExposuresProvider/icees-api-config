let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "CardiovascularSupporyECLSRx",
    identifiers = [
        "SCTID:78823007",
        "SCTID:243185007",
        "SCTID:243179000",
        "SCTID:431267001",
        "SCTID:718623001",
        "SCTID:232969009",
        "SCTID:741679001",
        "SCTID:341939001",
        "SCTID:260520002",
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
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    },
    binning_strategy = max_cutoff 2
}