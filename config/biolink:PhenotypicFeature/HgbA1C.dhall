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
    name = "HgbA1C",
    identifiers = [
        "NCIT:C122507",
        "UMLSCUI:C0239940",
        "NCIT:C64849",
        "UMLSCUI:C0202054",
        "SCTID:733829007",
        "SCTID:143080000",
        "SCTID:702945004",
        "SCTID:117346004",
        "SCTID:40402000",
        "SCTID:165678002",
        "SCTID:733830002",
        "SCTID:259690008",
        "LOINC:LP6264-8",
        "LOINC:LG48562-9",
        "LOINC:27353-2",
        "LOINC:53553-4",
        "LOINC:55454-3",
        "LOINC:41995-2",
        "LOINC:71875-9",
        "LOINC:4548-4",
        "LOINC:86910-7"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "41995-2"
        }
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}