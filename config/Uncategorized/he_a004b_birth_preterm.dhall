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
    name = "he_a004b_birth_preterm",
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = no_categories
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
        "NCIT:C159087",
        "SCITD:367494004",
        "SCITD:65588006",
        "SCITD:34089005",
        "SCITD:24146004",
        "SCITD:112075006",
        "SCITD:29997008",
        "SCITD:13859001",
        "SCITD:59403008",
        "SCITD:4886009",
        "SCITD:20272009",
        "SCITD:25192009",
        "SCITD:65588006",
        "SCITD:54650005",
        "SCITD:25192009",
        "SCITD:84382006",
        "SCITD:34100008",
        "SCITD:3798002",
        "MESH:D047928",
        "MESH:D007234"
    ]
}