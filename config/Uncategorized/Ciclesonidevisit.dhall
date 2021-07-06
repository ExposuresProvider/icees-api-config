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
    name = "Ciclesonidevisit",
    identifiers = [
        "SMILES:CC(C)C(:O)OCC(:O)[C@@]12O[C@@H](O[C@@H]1C[C@H]3[C@@H]4CCC5:CC(:O)C:C[C@]5(C)[C@H]4[C@@H](O)C[C@]23C)C6CCCCC6",
        "CAS:126544-47-6",
        "MESH:C120481",
        "CHEMBL:CHEMBL2040682",
        "PUBCHEM:6918155",
        "RXCUI:799037",
        "RXCUI:799040",
        "RXCUI:1797843",
        "RXCUI:1797840",
        "RXCUI:799034",
        "RXCUI:799038",
        "RXCUI:1797841",
        "RXCUI:1797838",
        "UMLSCUI:C2344608",
        "UMLSCUI:C2344611",
        "UMLSCUI:C2341618",
        "UMLSCUI:C3257739",
        "UMLSCUI:C2344605",
        "UMLSCUI:C2344609",
        "UMLSCUI:C2341615",
        "UMLSCUI:C3257733",
        "SCTID:417000005",
        "SCTID:416359000",
        "SCTID:422684008",
        "SCTID:417420004",
        "SCTID:416739001",
        "SCTID:424048001",
        "SCTID:423579004"
    ]
}