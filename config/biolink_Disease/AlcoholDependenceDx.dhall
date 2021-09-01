let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "AlcoholDependenceDx",
    identifiers = [
        "SNOMED:66590003",
        "SNOMED:713583005",
        "SNOMED:273264006",
        "SNOMED:713862009",
        "SNOMED:714829008",
        "SNOMED:273802002",
        "SNOMED:10741871000119101",
        "SNOMED:10755041000119100",
        "SNOMED:273799006",
        "SNOMED:288031000119105",
        "SNOMED:443504004",
        "SNOMED:191802004"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(303)[.].*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(F10)[.].*"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Disease"
        ]
    },
    binning_strategy = max_cutoff 2
}