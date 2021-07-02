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
    name = "SerumBicarbonate",
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    },
    identifiers = [
        "SCTID:271239003",
        "SCTID:1000681000000103",
        "SCTID:166699009",
        "SCTID:166698001",
        "SCTID:143997008",
        "SCTID:166697006",
        "LOINC:LP386568-2",
        "LOINC:LP386569-0",
        "RxNorm:1546277",
        "RxNorm:OMOP331736",
        "RxNorm:OMOP999413",
        "RxNorm:OMOP2800104",
        "NCIT:C61022",
        "UMLSCUI:C0428301",
        "NCIT:C55114",
        "UMLSCUI:C1557204",
        "NCIT:C55115",
        "UMLSCUI:C1557205",
        "NCIT:C55113",
        "UMLSCUI:C1557203",
        "NCIT:C55116",
        "UMLSCUI:C1557206",
        "NCIT:C55117",
        "UMLSCUI:C1557207",
        "NCIT:C78181",
        "UMLSCUIC0541802"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "1963-8"
        }
    ]
}