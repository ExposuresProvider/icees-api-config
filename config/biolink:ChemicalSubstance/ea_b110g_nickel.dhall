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
    name = "ea_b110g_nickel",
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
        "CHEBI_28112",
        "CHEBI:28112",
        "CHEBI:49423",
        "CHEBI:49786",
        "CHEBI:30399",
        "CHEBI:30679",
        "CHEBI:25516",
        "CHEBI:53001",
        "CHEBI:34887",
        "CHEBI:30372",
        "CHEBI:33748",
        "CHEBI:144804",
        "CHEBI:30375",
        "CHEBI:133340",
        "CHEBI:49928",
        "CHEBI:30392",
        "CHEBI:25519",
        "CHEBI:33362",
        "CHEBI:30373",
        "CHEBI:51188",
        "CHEBI:30388",
        "CHEBI:30389",
        "CHEBI:30386",
        "CHEBI:30390",
        "CHEBI:86151",
        "CHEBI:30368",
        "CHEBI:30387",
        "CHEBI:35439",
        "CHEBI:30369",
        "CHEBI:30391",
        "CHEBI:35438",
        "CHEBI:53437",
        "CHEBI:53504",
        "CHEBI:53542",
        "CHEBI:30374",
        "CHEBI:30394",
        "CHEBI:30393",
        "CHEBI:33747",
        "CHEBI:30071",
        "CHEBI:30370",
        "CHEBI:30070",
        "CHEBI:30381",
        "CHEBI:30382",
        "CHEBI:86149",
        "CHEBI:30384",
        "CHEBI:30385",
        "CHEBI:30380",
        "CHEBI:38076",
        "CHEBI:30379",
        "CHEBI:137678",
        "CHEBI:136841",
        "CHEBI:137696",
        "CHEBI:136887",
        "CHEBI:28265"
    ]
}