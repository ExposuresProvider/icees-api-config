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
    name = "EosinophilCount",
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    },
    identifiers = [
        "NCIT:C3015",
        "UMLS:C0427396",
        "UMLS:C4324572",
        "UMLS:C1963714",
        "UMLS:C1619696",
        "UMLS:C1843217",
        "SCTID:71960002",
        "SCTID:142932005",
        "SCTID:1022561000000101",
        "SCTID:142932005",
        "SCTID:165525005",
        "SCTID:556961000000109",
        "SCTID:143123003",
        "SCTID:386789004",
        "SCTID:142933000",
        "SCTID:250299007",
        "SCTID:142935007",
        "SCTID:365601007",
        "SCTID:165524009"
    ]
}