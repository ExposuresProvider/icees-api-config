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
let no_mapping = meta.no_mapping
let geoid_mapping = meta.geoid_mapping
in {
    name = "ChronicKidneyDiseaseDx",
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
        "MONDO:0005240",
        "MONDO:0001343",
        "MONDO:0002473",
        "MONDO:0005300",
        "MONDO:0005016",
        "MONDO:0004375",
        "MONDO:0015268",
        "MONDO:0000298",
        "MONDO:0020642",
        "MONDO:0033004",
        "MONDO:0008073",
        "MONDO:0008263",
        "MONDO:0010916",
        "MONDO:0013131",
        "MONDO:0003720",
        "MONDO:0003721",
        "MONDO:0013128",
        "MONDO:0019005",
        "MONDO:0008264",
        "MONDO:0033281",
        "MONDO:0019741",
        "MONDO:0054842",
        "MONDO:0011379",
        "MONDO:0020726",
        "MONDO:0009889",
        "MONDO:0004691",
        "MONDO:0022529",
        "MONDO:0009063",
        "MONDO:0007669",
        "MONDO:0008265",
        "MONDO:0014629",
        "MONDO:0014860",
        "MONDO:0019511",
        "MONDO:0044327",
        "MONDO:0054743",
        "MONDO:0019510",
        "MONDO:0012356",
        "MONDO:0010856",
        "MONDO:0009890",
        "MONDO:0010624",
        "MONDO:0021163",
        "NCIT:C80078",
        "UMLSCUI:C1561643"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm*",
            code = "N18*"
        }
    ]
}