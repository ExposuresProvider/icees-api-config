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
    name = "ea_b116d_butanol",
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
        "CHEBI:35687",
        "CHEBI:45475",
        "CHEBI:45895",
        "CHEBI:46645",
        "CHEBI:28885",
        "CHEBI:22950",
        "CHEBI:134813",
        "CHEBI:41268",
        "CHEBI:88390",
        "CHEBI:35686",
        "CHEBI:15688",
        "CHEBI:42639",
        "CHEBI:87381",
        "CHEBI:15837",
        "CHEBI:77518",
        "CHEBI:53449",
        "CHEBI:48945",
        "CHEBI:61368",
        "CHEBI:132750",
        "CHEBI:143852",
        "CHEBI:77517",
        "CHEBI:138440",
        "CHEBI:85235",
        "CHEBI:50625",
        "CHEBI:2691",
        "CHEBI:50585",
        "CHEBI:91275",
        "CHEBI:31725",
        "CHEBI:87296",
        "CHEBI:62995",
        "CHEBI:584020",
        "CHEBI:4877",
        "CHEBI:4638",
        "CHEBI:4878",
        "CHEBI:141413",
        "CHEBI:51173",
        "CHEBI:8498",
        "CHEBI:45307",
        "CHEBI:142835",
        "CHEBI:3216",
        "CHEBI:652822"
    ]
}