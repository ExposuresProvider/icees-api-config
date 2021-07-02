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
    name = "WHOSeverityScore",
    feature = {
        feature_type = range 0 10,
        categories = no_categories
    },
    identifiers = [
        "SCITD:278305009",
        "SCITD:273533008",
        "SCITD:1300631000000101",
        "SCITD:246112005",
        "SCITD:116694002",
        "SCITD:162465004",
        "SCITD:278689008",
        "MESH:D015601",
        "LOINC:LP173582-0",
        "LOINC:LP100002-7",
        "LOINC:LP186249-1",
        "LOINC:LP173587-9",
        "LOINC:59269-1",
        "LOINC:64008-6",
        "LOINC:38214-3",
        "LOINC:LA29474-6",
        "LOINC:LA29472-0",
        "LOINC:LA29473-8",
        "LOINC:LA25253-8",
        "LOINC:56840-2",
        "LOINC:LP34350-6",
        "LOINC:LP263552-4",
        "NCIT:C126668",
        "NCIT:C126676",
        "NCIT:C126669",
        "NCIT:C126675",
        "NCIT:C126674",
        "NCIT:C126667"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "https://browser.ihtsdotools.org",
            code = "SCTID: 278305009"
        }
    ]
}