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
    name = "AbdominalPain",
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
        "NCIT:C143255",
        "UMLS:C0423651",
        "NCIT:C35272",
        "UMLS:C0423653",
        "UMLS:C0476289",
        "UMLS:C0423646",
        "UMLS:C0581869",
        "UMLS:C0277969",
        "UMLS:C1969977",
        "UMLS:C0740577",
        "UMLS:C0558499",
        "UMLS:C3840090",
        "NCIT:C145112",
        "NCIT:C143959",
        "UMLS:C0740584",
        "UMLS:C0234246",
        "NCIT:C144496",
        "UMLS:C2586208",
        "UMLS:C0563276",
        "UMLS:C2585575",
        "UMLS:C0587223",
        "UMLS:C0232496",
        "UMLS:C0563277",
        "UMLS:C4047369",
        "UMLS:C1282002",
        "UMLS:C0423650",
        "UMLS:C0589386",
        "UMLS:C0585107",
        "UMLS:C4047372",
        "UMLS:C2749840",
        "UMLS:C0000727",
        "UMLS:C0277970",
        "UMLS:C1281941",
        "UMLS:C0476308",
        "UMLS:C0423655",
        "UMLS:C1868011",
        "UMLS:C3553274",
        "UMLS:C3266155",
        "UMLS:C0400882",
        "UMLS:C1300119",
        "UMLS:C0478659",
        "UMLS:C4479166",
        "UMLS:C0558502",
        "UMLS:C0558501",
        "UMLS:C1842405",
        "UMLS:C0558503",
        "UMLS:C0436922",
        "UMLS:C2919655",
        "UMLS:C0436932",
        "UMLS:C0436925",
        "UMLS:C0436930",
        "UMLS:C0436929",
        "UMLS:C0436931",
        "UMLS:C0436927",
        "UMLS:C0436923",
        "UMLS:C3873252",
        "UMLS:C0436926",
        "UMLS:C0436924",
        "UMLS:C0851977",
        "MONDO:0002268",
        "MONDO:0009842"
    ]
}