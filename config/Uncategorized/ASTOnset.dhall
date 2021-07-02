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
    name = "ASTOnset",
    identifiers = [
        "UMLS:C0264413",
        "UMLS:C1844940",
        "UMLS:C4693677",
        "UMLS:C1849127",
        "UMLS:C4751167",
        "UMLS:C3808653",
        "OMIM:301300",
        "UMLS:C2585287",
        "UMLS:C1860086",
        "UMLS:C1332442",
        "UMLS:C3552089",
        "UMLS:C3553163",
        "UMLS:C1332443",
        "NCIT:C81257",
        "UMLS:C3554667",
        "UMLS:C1846592",
        "UMLS:C1856348",
        "UMLS:C1836020",
        "UMLS:C2673730",
        "UMLS:C1838165",
        "UMLS:C4749913",
        "UMLS:C1850367",
        "UMLS:C2678290",
        "UMLS:C4693687",
        "UMLS:C4014014",
        "OMIM:614139",
        "UMLS:C1853411",
        "UMLS:C4749947",
        "UMLS:C1860418",
        "UMLS:C4013577",
        "UMLS:C4012163",
        "UMLS:C4693686",
        "MONDO:0018324",
        "MONDO:0044624",
        "MONDO:0016437",
        "MONDO:0011797",
        "MONDO:0014803",
        "MONDO:0014804",
        "MONDO:0010156",
        "MONDO:0013776",
        "MONDO:0044696",
        "MONDO:0012444",
        "MONDO:0010040",
        "MONDO:0010729",
        "MONDO:0100016"
    ]
}