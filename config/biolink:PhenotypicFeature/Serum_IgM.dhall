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
    name = "Serum_IgM",
    identifiers = [
        "UMLS:C2674487",
        "UMLS:C3278892",
        "UMLS:C1864582",
        "UMLS:C4014098",
        "UMLS:C4013570",
        "SCTID:165867008",
        "LOINC:LP384866-2",
        "LOINC:LP377049-4",
        "LOINC:LP395419-7",
        "LOINC:LP377091-6",
        "CPT:0062U",
        "CPT:82784",
        "CPT:82787",
        "CPT:86310",
        "CPT:86632",
        "CPT:86704",
        "CPT:86705",
        "CPT:86708",
        "CPT:86709",
        "CPT:86762",
        "CPT:86765",
        "CPT:86777",
        "CPT:86778",
        "CPT:86787",
        "CPT:86788",
        "CPT:86789",
        "CPT:86790",
        "CPT:86794"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}