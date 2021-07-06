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
    name = "he_c023c_thyroid_enlarged",
    identifiers = [
        "MONDO:0006354",
        "MONDO:0005397",
        "SCITD:237568003",
        "SCITD:267370001",
        "SCITD:190235005",
        "NCIT:C26785",
        "UMLSCUI:C0018021",
        "NCIT:C35271",
        "UMLSCUI:C0221777",
        "NCIT:C131440",
        "NCIT:C131438",
        "UMLSCUI:C0342208",
        "NCIT:C131072",
        "UMLSCUI:C0342205",
        "NCIT:C131436",
        "UMLSCUI:C0342114",
        "NCIT:C131437",
        "UMLSCUI:C0018023"
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