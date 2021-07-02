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
    name = "Itching",
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
    binning_strategies = [
        {
            method = no_binning,
            suffix = ""
        }
    ],
    identifiers = [
        "UMLS:C0231530",
        "UMLS:C1276050",
        "UMLS:C0849907",
        "UMLS:C0877202",
        "UMLS:C2939021",
        "UMLS:C0022281",
        "UMLS:C0919794",
        "UMLS:C0850060",
        "UMLS:C0033775",
        "UMLS:C0436563",
        "UMLS:C0240941",
        "NCIT:C78719",
        "UMLS:C0850674",
        "UMLS:C0877476",
        "UMLS:C0268988",
        "UMLS:C1142073",
        "UMLS:C0033777",
        "UMLS:C0849918",
        "UMLS:C0426769",
        "UMLS:C0406513",
        "UMLS:C0451941",
        "UMLS:C2930898",
        "UMLS:C0559537",
        "UMLS:C1847992",
        "NCIT:C58006",
        "NCIT:C34606",
        "UMLS:C0475858",
        "UMLS:C3662133",
        "UMLS:C3854376",
        "UMLS:C4748691",
        "UMLS:C2142807",
        "UMLS:C2127304",
        "UMLS:C0581924",
        "UMLS:C1504455",
        "UMLS:C0521628",
        "UMLS:C2142808",
        "UMLS:C1096091",
        "UMLS:C0948819",
        "UMLS:C0234181",
        "UMLS:C0521634",
        "UMLS:C0852995",
        "NCIT:C57965",
        "NCIT:C57917",
        "UMLS:C0853714",
        "UMLS:C4313167",
        "NCIT:C57942",
        "UMLS:C1504441",
        "UMLS:C2919846",
        "UMLS:C3275995",
        "UMLS:C3808822",
        "UMLS:C1277668",
        "UMLS:C3280916",
        "UMLS:C3150224",
        "UMLS:C4015112",
        "UMLS:C4314359",
        "UMLS:C3805531",
        "UMLS:C1847384",
        "MONDO:0002406",
        "MONDO:0011728",
        "CHEBI:59683",
        "MONDO:0021913",
        "SCITD:418290006",
        "SCITD:609526004",
        "SCITD:139685002",
        "SCITD:418363000",
        "LOINC:LA20641-9"
    ]
}