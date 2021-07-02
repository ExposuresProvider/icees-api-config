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
    name = "SerumPotassium",
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
        "LOINC:LP175655-2",
        "LOINC:LP270132-6",
        "LOINC:LP232138-0",
        "LOINC:LP71817-8",
        "LOINC:LP97783-2",
        "LOINC:LP101318-6",
        "NCIT:C121105",
        "UMLSCUI:C4055607",
        "NCIT:C61030",
        "UMLSCUI:C0302353",
        "NCIT:C55215",
        "UMLSCUI:C1559964",
        "NCIT:C55212",
        "UMLSCUI:C1559961",
        "NCIT:C55211",
        "UMLSCUI:C1559960",
        "NCIT:C55218",
        "UMLSCUI:C1559967",
        "NCIT:C55210",
        "UMLSCUI:C1559959",
        "NCIT:C55217",
        "UMLSCUI:C1559966",
        "NCIT:C55216",
        "UMLSCUI:C1559965",
        "NCIT:C55209",
        "UMLSCUI:C1559958",
        "NCIT:C55213",
        "UMLSCUI:C1559962",
        "NCIT:C55208",
        "UMLSCUI:C1559957",
        "NCIT:C55214",
        "UMLSCUI:C1559963"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "77142-8"
        }
    ]
}