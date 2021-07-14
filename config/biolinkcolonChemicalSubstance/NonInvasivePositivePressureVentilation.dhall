let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "NonInvasivePositivePressureVentilation",
    identifiers = [
        "SCTID:428311008",
        "SCTID:447837008",
        "SCTID:430191008"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Procedure",
            code_is_regex = False,
            system_is_regex = False,
            system = "https://browser.ihtsdotools.org",
            code = "SCTID: 447837008"
        }
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