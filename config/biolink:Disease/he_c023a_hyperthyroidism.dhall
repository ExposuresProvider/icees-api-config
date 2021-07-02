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
    name = "he_c023a_hyperthyroidism",
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
        "SCITD:34486009",
        "SCITD:722942005",
        "SCITD:722941003",
        "SCITD:427970008",
        "SCITD:161442007",
        "SCITD:10754921000119106",
        "SCITD:138714009",
        "MESH:D006980",
        "MESH:C566384",
        "MESH:D007037",
        "MESH:D003409",
        "MESH:C562768",
        "LOINC:LP74943-9",
        "LOINC:45637-6",
        "LOINC:LA14302-6",
        "LOINC:LA27854-1",
        "NCIT:C3123",
        "UMLSCUI:C0020550",
        "NCIT:C143560",
        "NCIT:C129635",
        "NCIT:C113145",
        "NCIT:C3714618",
        "MONDO:0005364",
        "MONDO:0001555",
        "MONDO:0010138",
        "MONDO:0012203",
        "MONDO:0011309",
        "MONDO:0014448",
        "MONDO:0007784"
    ]
}