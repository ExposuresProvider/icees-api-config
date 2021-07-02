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
    name = "SerumSodium",
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
        "SCTID:166691007",
        "SCTID:143995000",
        "SCTID:1000661000000107",
        "SCTID:166693005",
        "SCTID:166692000",
        "SCTID:143995000",
        "NCIT:C121104",
        "UMLSCUI:C4055606",
        "NCIT:C61029",
        "UMLSCUI:C0523891",
        "NCIT:C55230",
        "UMLSCUI:C1559978",
        "NCIT:C55229",
        "UMLSCUI:C1559977",
        "NCIT:C55235",
        "UMLSCUI:C1559983",
        "NCIT:C55226",
        "UMLSCUI:C1559974",
        "NCIT:C55234",
        "UMLSCUI:C1559982",
        "NCIT:C55232",
        "UMLSCUI:C1559980",
        "NCIT:C55233",
        "UMLSCUI:C1559981",
        "NCIT:C55227",
        "UMLSCUI:C1559975",
        "NCIT:C55228",
        "UMLSCUI:C1559976",
        "NCIT:C55231",
        "UMLSCUI:C1559979",
        "NCIT:C55225",
        "UMLSCUI:C1559973"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "77139-4"
        }
    ]
}