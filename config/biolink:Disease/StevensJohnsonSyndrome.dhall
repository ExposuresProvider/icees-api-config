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
    name = "StevensJohnsonSyndrome",
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
        "NCIT:C143859",
        "NCIT:C145642",
        "NCIT:C146566",
        "NCIT:C146134",
        "UMLS:C1274933",
        "UMLS:C3658302",
        "UMLS:C3661878",
        "UMLS:C0236036",
        "UMLS:C4518364",
        "NCIT:C58011",
        "NCIT:C57946",
        "NCIT:C57969",
        "NCIT:C57982",
        "NCIT:C57993",
        "MONDO:0018229",
        "MONDO:0044739",
        "MONDO:0019810",
        "MESH:D013262",
        "SCTID:73442001",
        "ICD9:695.%"
    ]
}