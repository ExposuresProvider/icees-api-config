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
    name = "ea_b110c_cadmium",
    identifiers = [
        "NCIT:C133964",
        "CHEBI:22977",
        "CHEBI:48775",
        "CHEBI:52619",
        "CHEBI:52620",
        "CHEBI:50292",
        "CHEBI:50833",
        "CHEBI:63063",
        "CHEBI:35456",
        "CHEBI:50834",
        "CHEBI:22978",
        "CHEBI:77732",
        "CHEBI:51183",
        "CHEBI:63938",
        "CHEBI:86157",
        "CHEBI:86156",
        "CHEBI:36565"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    }
}