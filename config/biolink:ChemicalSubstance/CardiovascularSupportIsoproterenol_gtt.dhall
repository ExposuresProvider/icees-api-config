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
    name = "CardiovascularSupportIsoproterenol_gtt",
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
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
        "CHEBI:64317",
        "CHEBI:6257",
        "CHEBI:8463",
        "CHEBI:4285",
        "CHEBI:31453",
        "MONDO:0010937",
        "PUBCHEM:3779",
        "NCIT:C62041",
        "UMLSCUI:C0022245",
        "NCIT:C29133",
        "UMLSCUI:C0282210",
        "NCIT:C65983",
        "UMLSCUI:C0282211",
        "RxNorm:6054",
        "RxNorm:1667908",
        "RxNorm:82030",
        "RxNorm:82031",
        "RxNorm:1159749",
        "RxNorm:335068",
        "RxNorm:2108199",
        "RxNorm:370718",
        "RxNorm:1667910",
        "RxNorm:372518",
        "RxNorm:847563",
        "RxNorm:372517",
        "RxNorm:440849",
        "RxNorm:1159746",
        "RxNorm:1159747",
        "RxNorm:1159748",
        "RxNorm:1295266",
        "RxNorm:1159750",
        "RxNorm:329888",
        "RxNorm:329890",
        "RxNorm:353572",
        "RxNorm:377288",
        "RxNorm:1299769",
        "RxNorm:1299772",
        "RxNorm:1299797",
        "RxNorm:2108205",
        "RxNorm:1299671",
        "SCTID:372781009",
        "SCTID:349931000"
    ]
}