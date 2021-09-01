let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "HighFlowNasalCannula",
    identifiers = [
        "SNOMED:426854004",
        "SNOMED:701101003",
        "SNOMED:336623009",
        "SNOMED:466713001",
        "SNOMED:468049003",
        "SNOMED:467645007",
        "LOINC:LA11916-6",
        "LOINC:LA11915-8",
        "LOINC:LA11266-6",
        "LOINC:LA11913-3",
        "LOINC:LA11914-1",
        "LOINC:LP72976-1",
        "LOINC:19979-4"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Procedure",
            code_is_regex = False,
            system_is_regex = False,
            system = "https://browser.ihtsdotools.org",
            code = "SCTID: 371907003"
        },
        {
            resource = "Procedure",
            code_is_regex = False,
            system_is_regex = False,
            system = "https://browser.ihtsdotools.org",
            code = "SCTID: 426854004"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ClinicalIntervention"
        ]
    },
    binning_strategy = max_cutoff 2
}