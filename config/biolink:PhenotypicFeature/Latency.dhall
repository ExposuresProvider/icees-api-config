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
    name = "Latency",
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    },
    binning_strategies = [
        {
            method = no_binning,
            suffix = ""
        }
    ],
    identifiers = [
        "UMLS:C0429404",
        "NCIT:C154867",
        "UMLS:C0233717",
        "UMLS:C0457404",
        "NCIT:C113389",
        "UMLS:C2674747",
        "UMLS:C0430806",
        "UMLS:C3280268",
        "UMLS:C0429391",
        "UMLS:C0455761",
        "UMLS:C0429392",
        "UMLS:C0429393",
        "UMLS:C0429369",
        "UMLS:C0456443",
        "UMLS:C0429374",
        "MESH:C109540",
        "UMLS:C1096412",
        "MESH:C472416",
        "UMLS:C0429419",
        "UMLS:C2750549",
        "UMLS:C1096027",
        "UMLS:C1096028",
        "MESH:C477253",
        "UMLS:C1837018",
        "UMLS:C5195206",
        "UMLS:C0429422",
        "UMLS:C4228100"
    ]
}