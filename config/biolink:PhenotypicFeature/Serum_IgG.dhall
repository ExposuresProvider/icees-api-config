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
    name = "Serum_IgG",
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
    binning_strategies = [
        {
            method = no_binning,
            suffix = ""
        }
    ],
    identifiers = [
        "UMLS:C3278891",
        "UMLS:C1864582",
        "UMLS:C4017766",
        "UMLS:C1847382",
        "UMLS:C4013570",
        "UMLS:C2750138",
        "SCTID:165868003",
        "CPT:0062U",
        "CPT:0224U",
        "CPT:82784",
        "CPT:82787",
        "CPT:86003",
        "CPT:86631",
        "CPT:86677",
        "CPT:86695",
        "CPT:86704",
        "CPT:86708",
        "CPT:86762",
        "CPT:86765",
        "CPT:86777",
        "CPT:86784",
        "CPT:86787",
        "CPT:86790"
    ]
}