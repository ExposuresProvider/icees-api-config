let meta = ../../common/meta.dhall
let ICEESAPIType = meta.ICEESAPIType
let Mapping = meta.Mapping
let NearestMapping = meta.NearestMapping
let generic_fhir_mapping = meta.generic_fhir_mapping
let environmental_mapping = meta.environmental_mapping
let avg = meta.avg
let max = meta.max
let prev_date = meta.prev_date
let integer = meta.integer
let range = meta.range
let string = meta.string
let enum = meta.enum
let number = meta.number
let cut = meta.cut
let qcut = meta.qcut
let range_bins = meta.range_bins
let no_binning = meta.no_binning
let replace = meta.replace
let suffix = meta.suffix
let no_rename = meta.no_rename
let nearest_point_distance = meta.nearest_point_distance
let nearest_point_attribute = meta.nearest_point_attribute
let nearest_feature_distance = meta.nearest_feature_distance
let nearest_feature_attribute = meta.nearest_feature_attribute
let no_identifiers = meta.no_identifiers
let no_categories = meta.no_categories
in {
    name = "AlopeciaDx",
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    },
    binning_strategies = [
        {
            method = range_bins {
                bins = [
                    0.0,
                    1.0,
                    2.0,
                    Infinity
                ],
                right = False,
                include_lowest = True,
                labels = [
                    "0",
                    "1",
                    ">1"
                ]
            },
            suffix = ""
        }
    ],
    identifiers = [
        "SCTID:56317004",
        "SCTID:160409001",
        "SCTID:403334008",
        "SCTID:275950000",
        "SCTID:68225006",
        "SCTID:201135005",
        "SCTID:403534007",
        "SCTID:403330004",
        "SCTID:201137002",
        "SCTID:19754005",
        "SCTID:201138007",
        "SCTID:238469005",
        "SCTID:27382006",
        "SCTID:403331000",
        "SCTID:67488005",
        "SCTID:400088006",
        "SCTID:403533001",
        "SCTID:201142005",
        "SCTID:109441000119102",
        "SCTID:201136006",
        "SCTID:701781007",
        "SCTID:201141003",
        "SCTID:201133003",
        "SCTID:409436003",
        "SCTID:201139004",
        "SCTID:31082002",
        "SCTID:22934003",
        "SCTID:54539003",
        "SCTID:2965006",
        "SCTID:111024006",
        "SCTID:87038002",
        "SCTID:87872006",
        "SCTID:403535008",
        "SCTID:59307008",
        "SCTID:65384007",
        "SCTID:201143000",
        "SCTID:201144006",
        "SCTID:72164009",
        "SCTID:86166000",
        "SCTID:65130004",
        "SCTID:59817009",
        "SCTID:403332007",
        "SCTID:73383004",
        "SCTID:238923001",
        "SCTID:238728002",
        "SCTID:67772009",
        "SCTID:238725004",
        "SCTID:201134009",
        "SCTID:201140002",
        "SCTID:238729005",
        "SCTID:46586006",
        "SCTID:1108009",
        "SCTID:5860009",
        "SCTID:403335009",
        "SCTID:403798006",
        "SCTID:268921005",
        "SCTID:311671002",
        "SCTID:201132008",
        "SCTID:717055000",
        "SCTID:77363004",
        "SCTID:237894002"
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
    ]
}