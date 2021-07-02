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
    name = "he_b011_angina",
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
        "MONDO:0006576",
        "MONDO:0006021",
        "MONDO:0006805",
        "MONDO:0006865",
        "MONDO:0005810",
        "MONDO:0015306",
        "MONDO:0021758",
        "MONDO:0021783",
        "MONDO:0020860",
        "NCIT:C51221",
        "UMLSCUI:C0002962",
        "NCIT:C66915",
        "UMLSCUI:C0002963",
        "NCIT:C66911",
        "UMLSCUI:C0002965",
        "NCIT:C66914",
        "UMLSCUI:C0340288",
        "NCIT:C80382",
        "UMLSCUI:C0741026",
        "SCITD:155307004",
        "SCITD:87343002",
        "SCITD:241154007",
        "SCITD:196542004",
        "SCITD:371807002",
        "SCITD:35928006",
        "SCITD:371806006",
        "SCITD:315025001",
        "SCITD:233819005",
        "SCITD:429559004",
        "SCITD:275121006",
        "SCITD:240342007",
        "SCITD:155312003",
        "SCITD:194838005",
        "SCITD:186960006",
        "SCITD:155309001",
        "SCITD:194818009",
        "SCITD:59021001",
        "SCITD:64333001",
        "SCITD:186358002"
    ]
}