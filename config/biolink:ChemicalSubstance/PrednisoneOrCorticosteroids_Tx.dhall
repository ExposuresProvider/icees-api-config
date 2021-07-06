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
let nearest_point_distance = meta.nearest_point_distance
let nearest_point_attribute = meta.nearest_point_attribute
let nearest_feature_distance = meta.nearest_feature_distance
let nearest_feature_attribute = meta.nearest_feature_attribute
let no_identifiers = meta.no_identifiers
let no_categories = meta.no_categories
let no_mapping = meta.no_mapping
let geoid_mapping = meta.geoid_mapping
in {
    name = "PrednisoneOrCorticosteroids_Tx",
    identifiers = [
        "CHEBI:50858",
        "NCIT:C142385",
        "MESH:D006889",
        "UMLS:C0571586",
        "UMLS:C0573704",
        "MESH:D015065",
        "MESH:D015062",
        "UMLS:C1971486",
        "UMLS:C0236132",
        "UMLS:C0570174",
        "UMLS:C0521861",
        "UMLS:C0569781",
        "UMLS:C0542024",
        "UMLS:C0853342",
        "UMLS:C0853325",
        "UMLS:C0521859",
        "UMLS:C0853309",
        "UMLS:C0274529",
        "UMLS:C0853308",
        "UMLS:C1274968",
        "UMLS:C0398795",
        "UMLS:C1271935",
        "UMLS:C0569139",
        "UMLS:C0569140",
        "UMLS:C0569141",
        "CPT:4193F",
        "CPT:4194F",
        "ICD10:T45.%",
        "ICD10:E09.%",
        "ICD10:T38.%",
        "ICD9:962.%",
        "ICD9:E858.%",
        "ICD9:E932.%",
        "ICD9:E950.%",
        "ICD9:E962.%",
        "ICD9:E980.%",
        "ICD9:V58.%",
        "CPT:0018U",
        "CPT:0218U",
        "CPT:0220U",
        "CPT:3750F",
        "CPT:4015F",
        "CPT:4135F",
        "CPT:4136F",
        "CPT:4140F",
        "CPT:62273",
        "CPT:64416",
        "CPT:83491",
        "ICD9:255.%",
        "ICD9:962.%",
        "ICD9:976.%",
        "ICD9:E858.%",
        "ICD9:E932.%",
        "ICD9:E946.%",
        "ICD9:E950.%",
        "ICD9:E962.%",
        "ICD9:E980.%"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    }
}