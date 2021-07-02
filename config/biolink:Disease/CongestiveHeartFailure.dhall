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
    name = "CongestiveHeartFailure",
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    },
    identifiers = [
        "OMIM:MTHU048033",
        "UMLS:C0264719",
        "UMLS:C3536548",
        "UMLS:C0264722",
        "UMLS:C3532936",
        "UMLS:C3532937",
        "UMLS:C0742758",
        "UMLS:C0685095",
        "UMLS:C0264785",
        "UMLS:C3532952",
        "UMLS:C4478914",
        "UMLS:C0264721",
        "UMLS:C1135194",
        "UMLS:C3697063",
        "UMLS:C0264720",
        "UMLS:C3531729",
        "UMLS:C2315232",
        "UMLS:C0264727",
        "UMLS:C3551869",
        "UMLS:C0264715",
        "UMLS:C0264724",
        "UMLS:C0264726",
        "UMLS:C3697706",
        "UMLS:C4047979",
        "UMLS:C1274674",
        "UMLS:C0264717",
        "UMLS:C1960707",
        "UMLS:C1135196",
        "UMLS:C0264546",
        "UMLS:C3698379",
        "UMLS:C2733492",
        "UMLS:C1968751",
        "OMIM:MTHU026791",
        "UMLS:C2732749",
        "UMLS:C0264650",
        "UMLS:C0155591",
        "UMLS:C3697987",
        "UMLS:C1854957",
        "UMLS:C4303699",
        "UMLS:C4303698",
        "UMLS:C0155589",
        "NCIT:C107613",
        "UMLS:C3665458",
        "UMLS:C0155586",
        "UMLS:C0494575",
        "UMLS:C1961050",
        "UMLS:C0392463",
        "UMLS:C2882274",
        "UMLS:C4047981",
        "UMLS:C2882275",
        "UMLS:C4751008",
        "UMLS:C2882276",
        "UMLS:C0494576",
        "UMLS:C4543635",
        "UMLS:C4543636",
        "UMLS:C4706244",
        "MONDO:0005009",
        "MONDO:0001899"
    ]
}