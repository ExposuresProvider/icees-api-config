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
let nearest_point_distance = meta.nearest_point_distance
let nearest_point_attribute = meta.nearest_point_attribute
let nearest_feature_distance = meta.nearest_feature_distance
let nearest_feature_attribute = meta.nearest_feature_attribute
let no_identifiers = meta.no_identifiers
let no_categories = meta.no_categories
let no_mapping = meta.no_mapping
let geoid_mapping = meta.geoid_mapping
in {
    name = "SerumIgA",
    identifiers = [
        "UMLS:C3276783",
        "UMLS:C3278891",
        "UMLS:C4540235",
        "UMLS:C3278896",
        "UMLS:C4017766",
        "NCIT:C39588",
        "UMLS:C1847382",
        "UMLS:C4013570",
        "UMLS:C3805779",
        "MONDO:0010744",
        "SCTID:913461000000106",
        "SCTID:913471000000104",
        "SCTID:1000571000000101",
        "SCTID:1108951000000109",
        "LOINC:LP377047-8",
        "LOINC:LP394347-1",
        "LOINC:LP394650-8",
        "LOINC:LP377467-8",
        "LOINC:LP394673-0",
        "LOINC:LP394360-4"
    ]
}