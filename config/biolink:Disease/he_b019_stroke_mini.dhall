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
    name = "he_b019_stroke_mini",
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
        "MONDO:0005264",
        "NCIT:C50781",
        "UMLSCUI:C0007787",
        "NCIT:C143886",
        "NCIT:C144443",
        "NCIT:C145048",
        "SCITD:473129008",
        "SCITD:161511000",
        "SCITD:230716006",
        "SCITD:705146005",
        "SCITD:413124000",
        "SCITD:230717002",
        "SCITD:160363004",
        "SCITD:415630002",
        "SCITD:140221000119109",
        "SCITD:457991000124100",
        "LOINC:LP75781-2",
        "LOINC:LA14278-8",
        "LOINC:LA27859-0",
        "LOINC:45663-2",
        "LOINC:LP90026-3",
        "LOINC:LA28846-6",
        "LOINC:54807-3",
        "LOINC:LP230008-7",
        "MESH:D002546",
        "MESH:D019194"
    ]
}