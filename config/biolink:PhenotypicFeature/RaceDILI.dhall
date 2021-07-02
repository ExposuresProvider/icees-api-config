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
    name = "RaceDILI",
    feature = {
        feature_type = enum [
            "White or Caucasian",
            "Black or African American",
            "Asian",
            "Other/Multiracial"
        ],
        categories = [
            "biolink:PhenotypicFeature",
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
        "NCIT:C17049",
        "UMLSCUI:C0034510",
        "NCIT:C93992",
        "UMLSCUI:C2986190",
        "SCTID:103579009",
        "MESH:C115528",
        "NCIT:C104495",
        "MESH:C103644",
        "MESH:C478659",
        "MESH:C060300",
        "MESH:C025011",
        "MESH:C539302",
        "UMLS:C0920122",
        "MESH:D000873",
        "MESH:C000632147",
        "MESH:C000588642",
        "MESH:C019594",
        "MESH:C574050",
        "MESH:C070231",
        "MESH:C102552",
        "MESH:D031642",
        "MESH:C000626300",
        "MESH:C062165",
        "MESH:C000626301",
        "MESH:C118554",
        "MESH:C000589006",
        "MESH:C435015",
        "MESH:C000597211",
        "NCIT:C37932"
    ]
}