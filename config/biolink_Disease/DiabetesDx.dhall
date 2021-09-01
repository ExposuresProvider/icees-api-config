let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "DiabetesDx",
    identifiers = [
        "SNOMED:405751000",
        "SNOMED:11530004",
        "SNOMED:702706001",
        "SNOMED:399144008",
        "SNOMED:9414007",
        "SNOMED:73211009",
        "SNOMED:315051004",
        "SNOMED:85487008",
        "SNOMED:15771004",
        "SNOMED:309417009",
        "SNOMED:270445003",
        "SNOMED:82980005",
        "SNOMED:79367009",
        "SNOMED:34170007",
        "SNOMED:38205001",
        "SNOMED:11687002",
        "SNOMED:408290003",
        "SNOMED:707683005",
        "SNOMED:127012008",
        "SNOMED:160303001",
        "SNOMED:161445009",
        "SNOMED:44054006",
        "SNOMED:46635009",
        "SNOMED:190447002",
        "SNOMED:405096004",
        "SNOMED:61165007",
        "SNOMED:405749004",
        "SNOMED:308505000",
        "SNOMED:312888008",
        "SNOMED:702848001",
        "SNOMED:160402005",
        "SNOMED:444913002",
        "SNOMED:61598006",
        "SNOMED:45369008",
        "SNOMED:49817004",
        "SNOMED:394725008",
        "SNOMED:21584002",
        "SNOMED:309593006",
        "SNOMED:720724003",
        "SNOMED:530558861000132104",
        "SNOMED:68061000119109",
        "SNOMED:315216001",
        "SNOMED:312856000",
        "SNOMED:160274005",
        "SNOMED:170774007",
        "SNOMED:237599002",
        "SNOMED:443313003",
        "SNOMED:185755005",
        "SNOMED:185761008",
        "SNOMED:170753006",
        "SNOMED:12275391000119108",
        "SNOMED:385805005",
        "SNOMED:473127005",
        "SNOMED:42021008",
        "SNOMED:8801005",
        "SNOMED:171183004",
        "SNOMED:185753003",
        "SNOMED:185754009",
        "SNOMED:44673006",
        "SNOMED:715159005",
        "SNOMED:161641009",
        "SNOMED:702849009",
        "SNOMED:13196008",
        "SNOMED:420825003",
        "SNOMED:420756003",
        "SNOMED:170752001",
        "SNOMED:77274005",
        "SNOMED:170775008",
        "SNOMED:421920002"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(249|250)[.].*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(E08|E09|E10|E11|E13)[.].*"
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