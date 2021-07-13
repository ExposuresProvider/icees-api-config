let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let no_categories = meta.no_categories
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "MaleInfertilityDueToSpermDysfunction",
    identifiers = [
        "MESH:D013081",
        "SCITD:414643008"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = False,
            system_is_regex = False,
            system = "https://browser.ihtsdotools.org",
            code = "SCTID: 2904007"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = no_categories
    },
    binning_strategy = max_cutoff 2
}