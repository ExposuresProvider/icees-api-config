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
    name = "OvarianCancerDx",
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
        "SCTID:363443007",
        "SCTID:424600001",
        "SCTID:424486004",
        "SCTID:423274005",
        "SCTID:423480004",
        "SCTID:422782004",
        "SCTID:254856004",
        "SCTID:18412003",
        "SCTID:718220008",
        "MONDO:0008170",
        "MONDO:0005140",
        "MONDO:0011450",
        "MONDO:0011931",
        "MONDO:0012933",
        "MONDO:0013253",
        "MONDO:0003582",
        "MONDO:0024282",
        "MONDO:0013669",
        "MONDO:0016248",
        "MONDO:0016249",
        "MONDO:0004033",
        "MONDO:0006477",
        "MONDO:0021144",
        "MONDO:0005211",
        "MONDO:0006335",
        "MONDO:0021068",
        "MONDO:0002230",
        "MONDO:0018364",
        "MONDO:0018171",
        "MONDO:0003795"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(183)[.].*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(C56)[.].*"
        }
    ]
}