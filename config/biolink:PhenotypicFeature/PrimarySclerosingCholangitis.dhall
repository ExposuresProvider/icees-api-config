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
    name = "PrimarySclerosingCholangitis",
    identifiers = [
        "UMLS:C0566602",
        "UMLS:C4543944",
        "MONDO:0018646",
        "MONDO:0013433",
        "SCITD:197441003",
        "SCITD:4032000",
        "SCITD:735733008",
        "SCITD:235917005",
        "SCITD:197442005",
        "SCITD:17266006",
        "SCITD:416922008",
        "SCITD:31712002",
        "SCITD:724278007",
        "SCITD:82403002",
        "SCITD:155831003",
        "SCITD:71912000",
        "SCITD:18028001",
        "MESH:C536419",
        "MESH:D015209",
        "MESH:C564365",
        "MESH:D002761",
        "MESH:D047868",
        "MESH:D013344",
        "MESH:D018219",
        "MESH:C562824",
        "ICD10:K83.%"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}