let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "CervicalCancerDx",
    identifiers = [
        "SCTID:363354003",
        "SCTID:423973006",
        "SCTID:315266007",
        "SCTID:128331000119100",
        "SCTID:736595007",
        "SCTID:4461000175108",
        "SCTID:112241000119107",
        "SCTID:15540006",
        "SCTID:81822003",
        "SCTID:68240008",
        "SCTID:49219005",
        "SCTID:25654007",
        "SCTID:52708004",
        "SCTID:87977001",
        "SCTID:708340009",
        "SCTID:708368008",
        "SCTID:708327004",
        "SCTID:708331005",
        "SCTID:708387002",
        "SCTID:708404006",
        "SCTID:708400002",
        "SCTID:708393005",
        "SCTID:708383003",
        "SCTID:708381001",
        "SCTID:708395003",
        "SCTID:716659002",
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