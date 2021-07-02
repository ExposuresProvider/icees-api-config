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
    name = "AvgDailyBenzeneExposure_2",
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    },
    binning_strategies = [
        {
            method = qcut 5,
            suffix = ""
        },
        {
            method = qcut 5,
            suffix = "_qcut"
        }
    ],
    identifiers = [
        "CHEBI:16716",
        "PUBCHEM:241",
        "MESH:D001554"
    ],
    mapping = environmental_mapping {
        dataset = "cmaq2",
        column = "AvgDailyBenzeneExposure_2",
        statistics = [
            {
                statistic = max,
                rename = suffix "_StudyMax"
            },
            {
                statistic = avg,
                rename = suffix "_StudyAvg"
            }
        ]
    }
}