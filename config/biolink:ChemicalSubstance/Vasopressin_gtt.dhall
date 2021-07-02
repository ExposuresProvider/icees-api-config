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
    name = "Vasopressin_gtt",
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
        "CHEBI:9937",
        "CHEBI:34543",
        "CHEBI:94802",
        "CHEBI:136020",
        "CHEBI:6603",
        "MONDO:0007450",
        "CHEBI:60564",
        "CHEBI:59727",
        "CHEBI:135905",
        "CHEBI:59680",
        "CHEBI:7872",
        "CHEBI:4450",
        "CHEBI:89492",
        "MONDO:0016383",
        "CHEBI:59726",
        "MONDO:0006802",
        "CHEBI:59728",
        "PUBCHEM:11979316",
        "RxNorm:1149",
        "RxNorm:2103181",
        "RxNorm:374283",
        "RxNorm:374284",
        "RxNorm:2103183",
        "RxNorm:1160506",
        "RxNorm:2399906",
        "RxNorm:2399912",
        "RxNorm:316883",
        "RxNorm:330297",
        "RxNorm:363284",
        "RxNorm:1593736",
        "RxNorm:1299644",
        "RxNorm:1299642",
        "RxNorm:1299638",
        "RxNorm:1292460",
        "RxNorm:1299640",
        "RxNorm:2399910",
        "RxNorm:2399916",
        "RxNorm:2103185",
        "RxNorm:2399908",
        "RxNorm:2399914",
        "RxNorm:569490",
        "RxNorm:313578",
        "RxNorm:242938",
        "RxNorm:1292461",
        "RxNorm:2399911",
        "RxNorm:2399917",
        "RxNorm:2103186",
        "RxNorm:2103182",
        "RxNorm:2399913",
        "RxNorm:1299645",
        "RxNorm:1299643",
        "RxNorm:1299639",
        "RxNorm:1299641",
        "RxNorm:2399907",
        "RxNorm:208841",
        "RxNorm:1593738",
        "RxNorm:2103184",
        "RxNorm:2399909",
        "RxNorm:2399915",
        "LOINC:LP15949-8",
        "SCTID:126192003",
        "SCTID:71338005"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "11149"
        }
    ]
}