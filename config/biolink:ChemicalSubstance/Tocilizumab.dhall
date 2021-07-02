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
    name = "Tocilizumab",
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
        "RxNorm:2106072",
        "RxNorm:2106074",
        "RxNorm:2106076",
        "RxNorm:2106077",
        "RxNorm:2106073",
        "RxNorm:2106075",
        "RxNorm:1162729",
        "RxNorm:612865",
        "RxNorm:895758",
        "RxNorm:895760",
        "RxNorm:895764",
        "RxNorm:895762",
        "RxNorm:895759",
        "RxNorm:1441530",
        "RxNorm:1441527",
        "RxNorm:1441525",
        "RxNorm:1441531",
        "RxNorm:1441532",
        "RxNorm:1441528",
        "RxNorm:1441526",
        "RxNorm:1441529",
        "RxNorm:1657973",
        "RxNorm:1657974",
        "RxNorm:1657975",
        "RxNorm:1657976",
        "RxNorm:1657977",
        "RxNorm:1657978",
        "RxNorm:1657979",
        "RxNorm:1657980",
        "RxNorm:1657981",
        "RxNorm:1657982",
        "SCITD:764192005",
        "SCITD:766668003",
        "SCITD:777794005",
        "SCITD:780657004",
        "SCITD:724164001",
        "SCITD:444617004",
        "SCITD:444648007",
        "SCITD:444649004",
        "SCITD:329071000119104",
        "SCITD:16101911000001101",
        "SCITD:16102011000001108",
        "SCITD:16102111000001109",
        "SCITD:24856911000001102",
        "SCITD:35431611000001103",
        "SCITD:16099011000001109",
        "SCITD:16099611000001102",
        "SCITD:16099311000001107",
        "SCITD:24779111000001109",
        "SCITD:35410211000001103",
        "NCIT:C84217",
        "UMLSCUI:C1609165",
        "PUBCHEM17396767",
        "PUBCHEM104253153",
        "PUBCHEM135345962",
        "PUBCHEM178103463",
        "PUBCHEM329976997",
        "PUBCHEM347910344",
        "PUBCHEM349016747",
        "PUBCHEM354355060",
        "PUBCHEM385326041",
        "PUBCHEM385327557",
        "PUBCHEM387061215",
        "PUBCHEM405092064"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "612865"
        }
    ]
}