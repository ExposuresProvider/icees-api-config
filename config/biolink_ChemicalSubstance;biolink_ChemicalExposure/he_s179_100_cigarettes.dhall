let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_s179_100_cigarettes",
    identifiers = [
        "NCIT:C127059",
        "NCIT:C1519386",
        "UMLS:C1519386",
        "MONDO:0008575",
        "LOINC:LP114183-9",
        "LOINC:LP156992-2",
        "LOINC:63638-1",
        "LOINC:72166-2",
        "LOINC:LP111730-0",
        "LOINC:LP212149-1",
        "SCTID:766931000000106",
        "SCTID:390902009",
        "SCTID:390904005"
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