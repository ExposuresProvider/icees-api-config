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
    name = "EstProbabilityHighSchoolMaxEducation",
    feature = {
        feature_type = range 1 4,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    },
    binning_strategies = [
        {
            method = qcut 4,
            suffix = ""
        },
        {
            method = qcut 4,
            suffix = "_qcut"
        }
    ],
    identifiers = [
        "NCIT:C89278",
        "UMLSCUI:C0599395",
        "NCIT:C67136",
        "UMLSCUI:C0870649",
        "SCTID:473461003"
    ],
    mapping = Mapping.GEOIDMapping {
        dataset = "acs",
        column = "prp_HSminus",
        datatype = string
    }
}