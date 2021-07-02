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
    name = "PrednisoneOrCorticosteroidsTx",
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
        "UMLS:C0569141"
    ]
}