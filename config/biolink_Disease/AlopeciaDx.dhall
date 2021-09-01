let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "AlopeciaDx",
    identifiers = [
        "SNOMED:56317004",
        "SNOMED:160409001",
        "SNOMED:403334008",
        "SNOMED:275950000",
        "SNOMED:68225006",
        "SNOMED:201135005",
        "SNOMED:403534007",
        "SNOMED:403330004",
        "SNOMED:201137002",
        "SNOMED:19754005",
        "SNOMED:201138007",
        "SNOMED:238469005",
        "SNOMED:27382006",
        "SNOMED:403331000",
        "SNOMED:67488005",
        "SNOMED:400088006",
        "SNOMED:403533001",
        "SNOMED:201142005",
        "SNOMED:109441000119102",
        "SNOMED:201136006",
        "SNOMED:701781007",
        "SNOMED:201141003",
        "SNOMED:201133003",
        "SNOMED:409436003",
        "SNOMED:201139004",
        "SNOMED:31082002",
        "SNOMED:22934003",
        "SNOMED:54539003",
        "SNOMED:2965006",
        "SNOMED:111024006",
        "SNOMED:87038002",
        "SNOMED:87872006",
        "SNOMED:403535008",
        "SNOMED:59307008",
        "SNOMED:65384007",
        "SNOMED:201143000",
        "SNOMED:201144006",
        "SNOMED:72164009",
        "SNOMED:86166000",
        "SNOMED:65130004",
        "SNOMED:59817009",
        "SNOMED:403332007",
        "SNOMED:73383004",
        "SNOMED:238923001",
        "SNOMED:238728002",
        "SNOMED:67772009",
        "SNOMED:238725004",
        "SNOMED:201134009",
        "SNOMED:201140002",
        "SNOMED:238729005",
        "SNOMED:46586006",
        "SNOMED:1108009",
        "SNOMED:5860009",
        "SNOMED:403335009",
        "SNOMED:403798006",
        "SNOMED:268921005",
        "SNOMED:311671002",
        "SNOMED:201132008",
        "SNOMED:717055000",
        "SNOMED:77363004",
        "SNOMED:237894002"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(704)[.].*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(L63|L64)[.].*"
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