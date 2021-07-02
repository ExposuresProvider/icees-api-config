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
    name = "NitricOxideOrFolan",
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
        "NCIT:C47514",
        "UMLSCUI:C0354594",
        "CHEBI:15552",
        "RxNorm:114221",
        "RxNorm:1169774",
        "RxNorm:362748",
        "RxNorm:211199",
        "RxNorm:211200",
        "RxNorm:1789861",
        "RxNorm:1789860",
        "RxNorm:1789872",
        "RxNorm:544927",
        "RxNorm:544926",
        "RxNorm:544929",
        "RxNorm:571655",
        "RxNorm:571656",
        "RxNorm:544928",
        "RxNorm:544930",
        "SCTID:9454801000001106",
        "SCTID:4627711000001106",
        "SCTID:33592511000001102",
        "SCTID:4627411000001100",
        "SCTID:33593311000001103",
        "SCTID:4627811000001103",
        "SCTID:33592611000001103",
        "SCTID:4627511000001101",
        "SCTID:33593511000001109",
        "PUBCHEM:53394235",
        "PUBCHEM:23695838",
        "PUBCHEM:6364626",
        "PUBCHEM:5282411"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "7442"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "114221"
        }
    ]
}