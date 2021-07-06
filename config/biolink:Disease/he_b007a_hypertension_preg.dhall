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
    name = "he_b007a_hypertension_preg",
    identifiers = [
        "MONDO:0005081",
        "MONDO:0024664",
        "MONDO:0011517",
        "NCIT:C4371",
        "UMLSCUI:C1314753",
        "NCIT:C9243",
        "UMLSCUI:C0852260",
        "NCIT:C128009",
        "NCIT:C128010",
        "NCIT:C128011",
        "LOINC:LA19980-4",
        "LOINC:LA19981-2",
        "MESH:D046110",
        "SCITD:288250001",
        "SCITD:82771000119102",
        "SCITD:307632004",
        "SCITD:237279007",
        "SCITD:198969004",
        "SCITD:157038006"
    ],
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
    }
}