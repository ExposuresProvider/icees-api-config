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
    name = "he_b014_congestive_heart_failure",
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
        "MONDO:0005009",
        "MONDO:0001899",
        "NCIT:C3080",
        "UMLSCUI:C0018802",
        "SCITD:42343007",
        "SCITD:10633002",
        "SCITD:88805009",
        "SCITD:698594003",
        "SCITD:195109001",
        "SCITD:195110006",
        "SCITD:74960003",
        "SCITD:5375005",
        "SCITD:66989003",
        "SCITD:717840005",
        "SCITD:67441000119101",
        "SCITD:67431000119105",
        "MESH:D006333",
        "MESH:D054144",
        "MESH:D054143",
        "LOINC:LP74648-4",
        "LOINC:LA12740-9",
        "LOINC:LA25635-6",
        "LOINC:LA27840-0"
    ]
}