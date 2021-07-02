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
    name = "he_b020a_stroke_type",
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
        "NCIT:C119579",
        "UMLSCUI:C3897486",
        "NCIT:C116715",
        "UMLSCUI:C3897199",
        "NCIT:C172675",
        "NCIT:C172674",
        "NCIT:C35047",
        "UMLSCUI:C0038819",
        "SCITD:413758000",
        "SCITD:16371781000119100",
        "SCITD:25133001",
        "SCITD:371041009",
        "SCITD:111297002",
        "SCITD:373606000",
        "SCITD:116288000",
        "SCITD:371040005",
        "SCITD:1078001000000105",
        "SCITD:371121002",
        "SCITD:195212005",
        "SCITD:195213000",
        "SCITD:735907005",
        "SCITD:230739000",
        "MESH:D000083262",
        "MESH:D000083244",
        "MESH:D018883",
        "MESH:D000083242",
        "MESH:D013474",
        "MONDO:0005098",
        "MONDO:0011057",
        "MONDO:0005264",
        "MONDO:0020671",
        "MONDO:0013792",
        "MONDO:0018752",
        "MONDO:0023642",
        "MONDO:0011729",
        "MONDO:0018585",
        "MONDO:0010789"
    ]
}