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
    name = "ea_b110f_mercury",
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
    },
    binning_strategies = [
        {
            method = range_bins {
                bins = [
                    0.0,
                    1.0,
                    2.0,
                    Infinity
                ],
                right = False,
                include_lowest = True,
                labels = [
                    "0",
                    "1",
                    ">1"
                ]
            },
            suffix = ""
        }
    ],
    identifiers = [
        "NCIT:C133964",
        "CHEBI:16170",
        "CHEBI:16793",
        "CHEBI:33255",
        "CHEBI:25198",
        "CHEBI:30785",
        "CHEBI:49659",
        "CHEBI:49819",
        "CHEBI:36573",
        "CHEBI:49639",
        "CHEBI:50236",
        "CHEBI:25197",
        "CHEBI:83725",
        "CHEBI:30786",
        "CHEBI:31823",
        "CHEBI:33204",
        "CHEBI:33211",
        "CHEBI:49747",
        "CHEBI:50237",
        "MONDO:0018020",
        "CHEBI:25196",
        "CHEBI:30787",
        "CHEBI:39152",
        "CHEBI:134744",
        "CHEBI:28216",
        "CHEBI:33050",
        "CHEBI:33210",
        "CHEBI:36574",
        "CHEBI:49727",
        "CHEBI:27684",
        "CHEBI:49823",
        "CHEBI:25322",
        "CHEBI:25706",
        "CHEBI:34277",
        "CHEBI:51568",
        "CHEBI:28886",
        "CHEBI:33206",
        "CHEBI:36561",
        "CHEBI:146200",
        "CHEBI:28420",
        "CHEBI:49644",
        "MONDO:0016588",
        "MONDO:0016013",
        "CHEBI:33214",
        "CHEBI:49484",
        "CHEBI:9546",
        "CHEBI:33269",
        "CHEBI:59445",
        "CHEBI:59455",
        "CHEBI:59462",
        "CHEBI:6763",
        "CHEBI:90221",
        "CHEBI:90220",
        "CHEBI:60168"
    ]
}