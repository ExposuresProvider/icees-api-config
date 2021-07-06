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
    name = "he_b013_coronary_artery",
    identifiers = [
        "LOINC:LP207937-6",
        "LOINC:LA25636-4",
        "MESH:D003324",
        "MESH:D003327",
        "SCITD:8957000",
        "SCITD:194841001",
        "SCITD:420006002",
        "SCITD:240567009",
        "SCITD:371804009",
        "SCITD:371803003",
        "SCITD:373144005",
        "SCITD:373146007",
        "SCITD:459701000124101",
        "NCIT:C26732",
        "UMLSCUI:CC1956346",
        "NCIT:C99968",
        "UMLSCUI:CC3275096",
        "MONDO:0005010",
        "MONDO:0012585",
        "MONDO:0012586",
        "MONDO:0013765",
        "MONDO:0012011",
        "MONDO:0012147",
        "MONDO:0011817",
        "MONDO:0021661",
        "MONDO:0018473",
        "MONDO:0014352"
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