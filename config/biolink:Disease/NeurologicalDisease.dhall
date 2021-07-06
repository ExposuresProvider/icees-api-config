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
    name = "NeurologicalDisease",
    identifiers = [
        "UMLS:C0519036",
        "UMLS:C1319811",
        "UMLS:C0343747",
        "UMLS:C1518909",
        "UMLS:C4076090",
        "UMLS:C4076283",
        "UMLS:C4076255",
        "UMLS:C4075689",
        "UMLS:C4076115",
        "UMLS:C4076105",
        "UMLS:C4075921",
        "UMLS:C4075966",
        "UMLS:C4076016",
        "UMLS:C4076119",
        "NCIT:C86983",
        "MONDO:0005071",
        "MONDO:0019632",
        "LOINC:LA28292-3",
        "LOINC:LA22092-3",
        "LOINC:LA10590-0",
        "LOINC:LA7458-8",
        "LOINC:LA28880-5",
        "MESH:D009422",
        "SCITD:407624006",
        "SCITD:724824002",
        "SCITD:100041000000105",
        "SCITD:95161000000107",
        "SCITD:240672009",
        "IC10:G93.%",
        "IC10:Z82.%"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}