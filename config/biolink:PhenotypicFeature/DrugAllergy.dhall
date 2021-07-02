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
    name = "DrugAllergy",
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
        "UMLS:C0455589",
        "UMLS:C0571705",
        "UMLS:C0455606",
        "UMLS:C0262581",
        "UMLS:C0571280",
        "UMLS:C0570663",
        "UMLS:C0571255",
        "UMLS:C0421286",
        "UMLS:C0571526",
        "UMLS:C0571300",
        "UMLS:C0571373",
        "UMLS:C0571505",
        "UMLS:C0571516",
        "UMLS:C0263347",
        "UMLS:C0570642",
        "UMLS:C4303977",
        "UMLS:C0571523",
        "UMLS:C0570881",
        "UMLS:C4075826",
        "UMLS:C0571773",
        "UMLS:C1536015",
        "UMLS:C0570904",
        "UMLS:C0570537",
        "UMLS:C3662101",
        "UMLS:C0570882",
        "UMLS:C0570510",
        "MONDO:0044982",
        "MONDO:0000775",
        "SCTID:93431001",
        "SCTID:161590003",
        "SCTID:138858004",
        "SCTID:294954006",
        "SCTID:295047007",
        "SCTID:294672003",
        "MESH:D004342"
    ]
}