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
    name = "ea_b110d_chromates",
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
        "CHEBI:35404",
        "CHEBI:33141",
        "CHEBI:78671",
        "CHEBI:33144",
        "CHEBI:39483",
        "CHEBI:86257",
        "CHEBI:75249",
        "CHEBI:33142",
        "CHEBI:30072",
        "CHEBI:33037",
        "CHEBI:53444",
        "CHEBI:30073",
        "CHEBI:33048",
        "CHEBI:30640",
        "CHEBI:33045",
        "CHEBI:33046",
        "CHEBI:33047",
        "CHEBI:30723",
        "CHEBI:33029",
        "CHEBI:33032",
        "CHEBI:33042",
        "CHEBI:33043",
        "CHEBI:30722",
        "CHEBI:33039",
        "CHEBI:33040",
        "CHEBI:51547",
        "CHEBI:30724",
        "CHEBI:51556",
        "CHEBI:33143",
        "CHEBI:23234"
    ]
}