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
    name = "AlcoholUse",
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    },
    identifiers = [
        "NCIT:C81229",
        "UMLS:C0085762",
        "UMLS:C0425063",
        "UMLS:C3875333",
        "UMLS:C3875569",
        "UMLS:C0001969",
        "UMLS:C0740860",
        "UMLS:C0001973",
        "UMLS:C0560219",
        "UMLS:C0221628",
        "UMLS:C0419431",
        "UMLS:C4302562",
        "UMLS:C1531986",
        "UMLS:C0425330",
        "UMLS:C3662857",
        "UMLS:C4075970",
        "UMLS:C4076447",
        "UMLS:C4075952",
        "UMLS:C3494953",
        "UMLS:C0751865",
        "UMLS:C4302076",
        "UMLS:C4076485",
        "UMLS:C0267658",
        "NCIT:C156823",
        "UMLS:C3697038",
        "UMLS:C3494748",
        "UMLS:C1397317",
        "UMLS:C0338711",
        "UMLS:C0338710",
        "UMLS:C1332228",
        "UMLS:C1531625",
        "NCIT:C142385",
        "UMLS:C0480073",
        "UMLS:C4510111",
        "UMLS:C0338712",
        "UMLS:C5192891",
        "UMLS:C0425331",
        "UMLS:C0271938",
        "UMLS:C5192892",
        "UMLS:C0261439",
        "UMLS:C3714441",
        "UMLS:C1268755",
        "UMLS:C5192890",
        "UMLS:C0416699",
        "UMLS:C0261440",
        "UMLS:C0261437",
        "UMLS:C4075980",
        "NCIT:C56603",
        "UMLS:C4510983",
        "UMLS:C4510321",
        "UMLS:C3662234",
        "UMLS:C4510322",
        "UMLS:C0416703",
        "NCIT:C56614",
        "NCIT:C56626",
        "UMLS:C4706350",
        "UMLS:C4751523",
        "UMLS:C4510179",
        "UMLS:C1852264",
        "UMLS:C4510320",
        "UMLS:C0154473",
        "UMLS:C0033936",
        "UMLS:C1852007",
        "MONDO:0002046"
    ]
}