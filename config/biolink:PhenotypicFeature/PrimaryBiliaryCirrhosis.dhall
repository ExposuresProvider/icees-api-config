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
    name = "PrimaryBiliaryCirrhosis",
    identifiers = [
        "UMLS:C2931878",
        "MESH:C069356",
        "MONDO:0005388",
        "MONDO:0007193",
        "MONDO:0013079",
        "MONDO:0013080",
        "MONDO:0013636",
        "MONDO:0013637",
        "MONDO:0013276",
        "LOINC:LA9639-1",
        "LOINC:LP90002-4",
        "MESH:D008105",
        "MESH:D008104",
        "MESH:D008103",
        "SCITD:155815006",
        "SCITD:266540000",
        "SCITD:1761006",
        "ICD10:K74.%",
        "ICD9:571.%"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}