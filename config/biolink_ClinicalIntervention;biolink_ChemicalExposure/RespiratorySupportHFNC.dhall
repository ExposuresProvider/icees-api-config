let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "RespiratorySupportHFNC",
    identifiers = [
        "SCTID:426854004",
        "SCTID:701101003",
        "SCTID:336623009",
        "SCTID:466713001",
        "SCTID:468049003",
        "SCTID:467645007",
        "LOINC:LA11916-6",
        "LOINC:LA11915-8",
        "LOINC:LA11266-6",
        "LOINC:LA11913-3",
        "LOINC:LA11914-1",
        "LOINC:LP72976-1",
        "LOINC:19979-4"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ClinicalIntervention",
            "biolink:ChemicalExposure"
        ]
    },
    binning_strategy = max_cutoff 2
}