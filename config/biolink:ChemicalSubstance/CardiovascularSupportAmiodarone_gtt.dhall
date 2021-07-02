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
    name = "CardiovascularSupportAmiodarone_gtt",
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
        "PUBCHEM:2157",
        "CHEBI:2663",
        "CHEBI:2664",
        "NCIT:C62002",
        "UMLSCUI:C0002598",
        "NCIT:C236",
        "UMLSCUI:C0700442",
        "NCIT:C10307",
        "UMLSCUI:C0280651",
        "NCIT:C9974",
        "UMLSCUI:C0279280",
        "NCIT:C9973",
        "UMLSCUI:C0279279",
        "RxNorm:703",
        "RxNorm:1663223",
        "RxNorm:203114",
        "RxNorm:1151983",
        "RxNorm:790892",
        "RxNorm:577358",
        "LOINC:LP16028-0",
        "SCTID:372821002",
        "SCTID:105063004",
        "SCTID:845331000000109",
        "SCTID:297001003",
        "SCTID:291954007",
        "SCTID:318180009",
        "SCTID:52574003"
    ]
}