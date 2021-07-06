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
    name = "Hemochromatosis",
    identifiers = [
        "UMLS:C0018995",
        "UMLS:C3544221",
        "UMLS:C0268061",
        "MESH:D000071020",
        "UMLS:C0392514",
        "UMLS:C3711388",
        "OMIM:602390",
        "UMLS:C2025293",
        "UMLS:C1865614",
        "UMLS:C0268064",
        "UMLS:C3494868",
        "UMLS:C0268062",
        "UMLS:C1276030",
        "UMLS:C1414833",
        "UMLS:C4305474",
        "UMLS:C4544518",
        "UMLS:C0264819",
        "UMLS:C0264843",
        "UMLS:C4076065",
        "UMLS:C3150339"
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