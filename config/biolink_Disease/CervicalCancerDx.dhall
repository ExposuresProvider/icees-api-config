let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "CervicalCancerDx",
    identifiers = [
        "SNOMED:363354003",
        "SNOMED:423973006",
        "SNOMED:315266007",
        "SNOMED:128331000119100",
        "SNOMED:736595007",
        "SNOMED:4461000175108",
        "SNOMED:112241000119107",
        "SNOMED:15540006",
        "SNOMED:81822003",
        "SNOMED:68240008",
        "SNOMED:49219005",
        "SNOMED:25654007",
        "SNOMED:52708004",
        "SNOMED:87977001",
        "SNOMED:708340009",
        "SNOMED:708368008",
        "SNOMED:708327004",
        "SNOMED:708331005",
        "SNOMED:708387002",
        "SNOMED:708404006",
        "SNOMED:708400002",
        "SNOMED:708393005",
        "SNOMED:708383003",
        "SNOMED:708381001",
        "SNOMED:708395003",
        "SNOMED:716659002",
        "MONDO:0002974",
        "MONDO:0005131",
        "MONDO:0042487",
        "MONDO:0002455",
        "MONDO:0004259",
        "MONDO:0006143",
        "MONDO:0016274"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(180)[.].*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(C53)[.].*"
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