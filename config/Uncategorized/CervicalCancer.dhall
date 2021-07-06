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
    name = "CervicalCancer",
    identifiers = [
        "SCTID:363354003",
        "SCTID:423973006",
        "SCTID:315266007",
        "SCTID:128331000119100",
        "SCTID:736595007",
        "SCTID:4461000175108",
        "SCTID:112241000119107",
        "SCTID:15540006",
        "SCTID:81822003",
        "SCTID:68240008",
        "SCTID:49219005",
        "SCTID:25654007",
        "SCTID:52708004",
        "SCTID:87977001",
        "SCTID:708340009",
        "SCTID:708368008",
        "SCTID:708327004",
        "SCTID:708331005",
        "SCTID:708387002",
        "SCTID:708404006",
        "SCTID:708400002",
        "SCTID:708393005",
        "SCTID:708383003",
        "SCTID:708381001",
        "SCTID:708395003",
        "SCTID:716659002",
        "MONDO:0002974",
        "MONDO:0005131",
        "MONDO:0042487",
        "MONDO:0002455",
        "MONDO:0004259",
        "MONDO:0006143",
        "MONDO:0016274"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = no_categories
    }
}