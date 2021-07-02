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
    name = "AntiHAV",
    identifiers = [
        "OMIM:MTHU045723",
        "UMLS:C0001676",
        "UMLS:C0562564",
        "UMLS:C0236868",
        "UMLS:C0338923",
        "UMLS:C1861475",
        "UMLS:C1850464",
        "UMLS:C2749608",
        "UMLS:C3808969",
        "MONDO:0010379",
        "MONDO:0009408",
        "SCTID:32609007",
        "LOINC:55264-6",
        "LOINC:53775-3",
        "LOINC:95142-6",
        "LOINC:94539-4",
        "LOINC:75860-7",
        "LOINC:22312-3",
        "LOINC:20575-7",
        "LOINC:53776-1",
        "LOINC:89373-5"
    ]
}