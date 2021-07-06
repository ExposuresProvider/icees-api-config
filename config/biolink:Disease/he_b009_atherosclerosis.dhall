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
    name = "he_b009_atherosclerosis",
    identifiers = [
        "PUBCHEM:72941823",
        "PUBCHEM:11607970",
        "PUBCHEM:10224454",
        "NCIT:C35768",
        "UMLSCUI:C0004153",
        "NCIT:C34459",
        "UMLSCUI:C0007775",
        "NCIT:C35767",
        "UMLSCUI:C0017327",
        "NCIT:C35505",
        "UMLSCUI:C0010054",
        "MONDO:0000980",
        "MONDO:0001876",
        "MONDO:0005311",
        "MONDO:0021661",
        "MONDO:0005010",
        "MONDO:0006694",
        "MONDO:0002275",
        "MONDO:0007169",
        "MONDO:0008843",
        "LOINC:LA28403-6",
        "LOINC:LP98960-5",
        "LOINC:58334-4",
        "LOINC:LA12725-0",
        "LOINC:LA12727-6",
        "LOINC:LA27838-4",
        "MESH:D050197",
        "SCITD:38716007",
        "SCITD:155382007",
        "SCITD:194848007",
        "SCITD:160362009",
        "SCITD:39823006",
        "SCITD:367108003",
        "SCITD:233956002",
        "SCITD:443502000",
        "SCITD:300920004",
        "SCITD:55382008",
        "SCITD:155415000",
        "SCITD:155316000",
        "SCITD:266231003",
        "SCITD:155416004",
        "SCITD:137758007",
        "SCITD:266258005",
        "SCITD:266318005",
        "SCITD:81817003",
        "SCITD:441574008",
        "SCITD:195252007",
        "SCITD:233955003",
        "SCITD:461441000124103",
        "SCITD:461431000124108",
        "SCITD:1033151000000100",
        "SCITD:45281005",
        "SCITD:284871000119105",
        "SCITD:8001000119106",
        "SCITD:284881000119108"
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