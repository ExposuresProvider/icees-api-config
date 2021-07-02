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
    name = "he_b010_cardiac_arrhythmia",
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
        "MONDO:0012061",
        "MONDO:0020745",
        "MONDO:0010958",
        "MONDO:0054866",
        "MONDO:0014953",
        "MONDO:0014500",
        "MONDO:0010457",
        "MONDO:0014782",
        "MONDO:0014812",
        "MONDO:0014957",
        "NCIT:C2881",
        "UMLSCUI:C0003811",
        "NCIT:C53784",
        "UMLSCUI:C1560249",
        "NCIT:C54786",
        "UMLSCUI:C1560250",
        "NCIT:C54817",
        "UMLSCUI:C1560251",
        "NCIT:C54849",
        "UMLSCUI:C1560252",
        "NCIT:C54911",
        "UMLSCUI:C1560254",
        "NCIT:C54880",
        "UMLSCUI:C1560253",
        "NCIT:C54775",
        "UMLSCUI:C0494598",
        "SCITD:698247007",
        "SCITD:131471000119104",
        "LOINC:LA15419-7",
        "LOINC:LA22197-0",
        "LOINC:LA7414-1",
        "MESH:C566996",
        "MESH:D001145"
    ]
}