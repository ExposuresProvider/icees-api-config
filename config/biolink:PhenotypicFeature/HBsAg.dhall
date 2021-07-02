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
    name = "HBsAg",
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
        "UMLS:C0149709",
        "PUBCHEM.COMPOUND:10422635",
        "UMLS:C0262505",
        "SCITD:143473009",
        "SCITD:166105007",
        "SCITD:1008791000000106",
        "LOINC:58452-4",
        "LOINC:5195-3",
        "LOINC:5197-9",
        "LOINC:95149-1",
        "LOINC:95234-1",
        "LOINC:50967-9",
        "LOINC:42505-8",
        "LOINC:47364-5",
        "LOINC:10675-7",
        "LOINC:51659-1",
        "LOINC:10674-0",
        "LOINC:7905-3",
        "LOINC:70154-0",
        "LOINC:65633-0",
        "LOINC:5196-1",
        "LOINC:63557-3",
        "LOINC:95148-3",
        "LOINC:75410-1"
    ]
}