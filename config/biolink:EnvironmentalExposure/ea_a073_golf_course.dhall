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
    name = "ea_a073_golf_course",
    feature = {
        feature_type = enum [
            "Live more than 2 miles away",
            "Live within 2 miles but more than 1 mile",
            "Live within 1 mile but more than 1/4 mile",
            "Live within 1/4 mile or less",
            "Don't know"
        ],
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    },
    binning_strategies = [
        {
            method = no_binning,
            suffix = ""
        }
    ],
    identifiers = no_identifiers
}