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
    name = "CK",
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
        "NCIT:C113245",
        "UMLSCUI:C0010287",
        "NCIT:C64489",
        "UMLSCUI:C0201973",
        "NCIT:C16473",
        "UMLSCUI:C0010289",
        "NCIT:C122778",
        "UMLSCUI:C0010290",
        "NCIT:C64491",
        "UMLSCUI:C0523584",
        "CHEBI:73354",
        "MONDO:0007402",
        "PUBCHEM:135273135",
        "PUBCHEM:318694158",
        "PUBCHEM:160743788",
        "PUBCHEM:318694156",
        "PUBCHEM:160743818",
        "PUBCHEM:160743757",
        "PUBCHEM:318694157",
        "PUBCHEM:160743807",
        "PUBCHEM:160743839",
        "PUBCHEM:318694023",
        "PUBCHEM:318694159",
        "PUBCHEM:318693369",
        "PUBCHEM:318693366",
        "PUBCHEM:318694022",
        "PUBCHEM:402425871",
        "PUBCHEM:405230663",
        "PUBCHEM:405229273",
        "PUBCHEM:405230665",
        "PUBCHEM:405230667",
        "PUBCHEM:160743652",
        "PUBCHEM:318693368",
        "PUBCHEM:318694024",
        "PUBCHEM:318693364",
        "PUBCHEM:318694160",
        "PUBCHEM:318694021",
        "PUBCHEM:354355136",
        "PUBCHEM:160730548",
        "PUBCHEM:160743768",
        "PUBCHEM:160743828",
        "PUBCHEM:160743632",
        "PUBCHEM:160730546",
        "PUBCHEM:160743778",
        "PUBCHEM:405230664",
        "PUBCHEM:176259324"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "13969-1"
        }
    ]
}