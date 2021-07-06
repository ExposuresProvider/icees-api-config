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
    name = "ea_b110b_beryllium",
    identifiers = [
        "NCIT:C133964",
        "CHEBI:33783",
        "CHEBI:52628",
        "CHEBI:62842",
        "CHEBI:30502",
        "CHEBI:30503",
        "CHEBI:39133",
        "CHEBI:33785",
        "CHEBI:49499",
        "CHEBI:30504",
        "CHEBI:33787",
        "CHEBI:39132",
        "CHEBI:53473",
        "CHEBI:62843",
        "CHEBI:33790",
        "CHEBI:33780",
        "CHEBI:35102",
        "CHEBI:35103",
        "CHEBI:35151",
        "CHEBI:30505",
        "CHEBI:30500",
        "CHEBI:30506",
        "CHEBI:51180",
        "CHEBI:30498",
        "CHEBI:30497",
        "CHEBI:53502",
        "CHEBI:33782"
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