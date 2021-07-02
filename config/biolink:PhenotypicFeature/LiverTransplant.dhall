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
let no_mapping = meta.no_mapping
let geoid_mapping = meta.geoid_mapping
in {
    name = "LiverTransplant",
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    },
    identifiers = [
        "NCIT:C26991",
        "UMLS:C0948032",
        "UMLS:C0400969",
        "UMLS:C3875559",
        "UMLS:C0400967",
        "UMLS:C0455647",
        "UMLS:C3811922",
        "UMLS:C0400968",
        "UMLS:C3887014",
        "UMLS:C2315620",
        "UMLS:C4038663",
        "UMLS:C2315621",
        "UMLS:C0451706",
        "UMLS:C0948095",
        "UMLS:C2315622",
        "UMLS:C2315619",
        "UMLS:C4314021",
        "UMLS:C2748694",
        "UMLS:C4014544",
        "UMLS:C4081729",
        "UMLS:C4479352",
        "UMLS:C3277946",
        "SCITD:149473000",
        "SCITD:174426002",
        "MESH:D016031",
        "LOINC:LA28295-6",
        "LOINC:LP34904-0",
        "LOINC:LP72883-9",
        "LOINC:LP55928-3",
        "LOINC:LP55927-5",
        "LOINC:44762-3",
        "LOINC:44773-0",
        "LOINC:44775-5",
        "ICD10:T86.%",
        "ICD10:Y83.%",
        "ICD10:Z48.%",
        "ICD10:Z76.%",
        "ICD10:Z94.%",
        "CPT:00796",
        "CPT:47143",
        "CPT:47144",
        "CPT:47145",
        "CPT:47147",
        "ICD9:V42.%",
        "ICD9:996.%"
    ]
}