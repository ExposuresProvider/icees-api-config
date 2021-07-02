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
    name = "he_a004c_birth_multi",
    feature = {
        feature_type = enum [
            "Twin",
            "Triplet",
            "Other Multiple"
        ],
        categories = no_categories
    },
    identifiers = [
        "NCIT:C81271",
        "UMLSCUI:C2015861",
        "NCIT:C93517",
        "UMLSCUI:C0005607",
        "LOINC:LA18973-0",
        "SCITD:45384004",
        "SCITD:722250005",
        "SCITD:199328007",
        "MONDO:0007245"
    ]
}