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
    name = "he_d025_copd",
    identifiers = [
        "MONDO:0011751",
        "MONDO:0005002",
        "NCIT:C3199",
        "UMLSCUI:C0024117",
        "LOINC:LA28200-6",
        "LOINC:LA27422-7",
        "LOINC:LA27514-1",
        "LOINC:LA27872-3",
        "LOINC:45670-7",
        "SCITD:171230000",
        "SCITD:204991000000107",
        "SCITD:390891009",
        "SCITD:313296004",
        "SCITD:313297008",
        "SCITD:313299006",
        "SCITD:155582008",
        "SCITD:195996000",
        "SCITD:155583003",
        "SCITD:195997009"
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