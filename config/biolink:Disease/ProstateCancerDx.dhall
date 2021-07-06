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
    name = "ProstateCancerDx",
    identifiers = [
        "SCTID:254900004",
        "SCTID:399068003",
        "SCTID:715412008",
        "SCTID:315268008",
        "SCTID:314994000",
        "SCTID:92691004",
        "SCTID:720007002",
        "SCTID:94503003",
        "SCTID:720008007",
        "SCTID:414205003",
        "SCTID:722103009",
        "SCTID:427492003",
        "SCTID:712849003",
        "SCTID:31011000119107",
        "SCTID:712837004",
        "SCTID:609102007",
        "SCTID:698470001",
        "SCTID:722081007",
        "SCTID:254381008",
        "SCTID:421411003",
        "SCTID:406077007",
        "SCTID:421714007",
        "SCTID:406076003"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(185)[.].*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(C61)[.].*"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}