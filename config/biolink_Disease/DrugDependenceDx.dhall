let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "DrugDependenceDx",
    identifiers = [
        "SNOMED:191816009",
        "SNOMED:231482005",
        "SNOMED:153501000119105",
        "SNOMED:199253007",
        "SNOMED:441681009",
        "SNOMED:231481003",
        "SNOMED:95918004",
        "SNOMED:153491000119103",
        "SNOMED:1461000119109",
        "SNOMED:724714000",
        "SNOMED:191877009",
        "SNOMED:191829009",
        "SNOMED:237228001",
        "SNOMED:10755161000119102",
        "SNOMED:268641003",
        "SNOMED:414056002",
        "SNOMED:414054004",
        "SNOMED:429299000",
        "SNOMED:191865004",
        "SNOMED:191871005",
        "SNOMED:724704009",
        "SNOMED:199252002",
        "SNOMED:414055003",
        "SNOMED:191868002",
        "SNOMED:191874002",
        "SNOMED:191873008",
        "SNOMED:191867007",
        "SNOMED:191869005",
        "SNOMED:191875001",
        "SNOMED:199254001",
        "SNOMED:267206008",
        "SNOMED:34150001",
        "SNOMED:199255000"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(304)[.].*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(F11|F12|F13|F14|F15|F16|F17|F18|F19)[.].*"
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