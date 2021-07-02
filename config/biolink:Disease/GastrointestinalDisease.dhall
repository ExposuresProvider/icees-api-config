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
    name = "GastrointestinalDisease",
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    },
    binning_strategies = [
        {
            method = no_binning,
            suffix = ""
        }
    ],
    identifiers = [
        "UMLS:C0455420",
        "UMLS:C0455553",
        "UMLS:C1301260",
        "UMLS:C0853197",
        "UMLS:C1290615",
        "UMLS:C4324649",
        "UMLS:C0455337",
        "UMLS:C4544979",
        "UMLS:C0729521",
        "UMLS:C4302262",
        "UMLS:C0421218",
        "UMLS:C1609501",
        "UMLS:C0872218",
        "MONDO:0005020",
        "MONDO:0004335",
        "MONDO:0006181",
        "MONDO:0044991",
        "MONDO:0018438",
        "MONDO:0000588",
        "SCITD:266997008",
        "SCITD:161530000",
        "SCITD:138799003",
        "SCITD:160381001",
        "LOINC:LA10532-2",
        "LOINC:LA16968-2",
        "MESH:D005767"
    ]
}