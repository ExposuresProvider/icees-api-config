let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ProstateCancerDx",
    identifiers = [
        "SNOMED:254900004",
        "SNOMED:399068003",
        "SNOMED:715412008",
        "SNOMED:315268008",
        "SNOMED:314994000",
        "SNOMED:92691004",
        "SNOMED:720007002",
        "SNOMED:94503003",
        "SNOMED:720008007",
        "SNOMED:414205003",
        "SNOMED:722103009",
        "SNOMED:427492003",
        "SNOMED:712849003",
        "SNOMED:31011000119107",
        "SNOMED:712837004",
        "SNOMED:609102007",
        "SNOMED:698470001",
        "SNOMED:722081007",
        "SNOMED:254381008",
        "SNOMED:421411003",
        "SNOMED:406077007",
        "SNOMED:421714007",
        "SNOMED:406076003"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(185)[.].*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(C61)[.].*"
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