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
    name = "he_c023b_hypothyroidism",
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
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
        "LOINC:LA14303-4",
        "LOINC:LP74946-2",
        "LOINC:LP56766-6",
        "LOINC:LA12538-7",
        "LOINC:LA12539-5",
        "LOINC:LP56773-2",
        "LOINC:LP258944-0",
        "LOINC:LP258945-7",
        "LOINC:LP97619-8",
        "LOINC:LP96692-6",
        "LOINC:45638-4",
        "LOINC:LP96698-3",
        "LOINC:LP385889-3",
        "LOINC:46762-1",
        "LOINC:LP385890-1",
        "MESH:D007037",
        "MESH:D003409",
        "MESH:C562768",
        "MESH:C567034",
        "MESH:C536917",
        "SCITD:40930008",
        "SCITD:237572004",
        "SCITD:190274003",
        "SCITD:- SCITD:27059002",
        "SCITD:111566002",
        "SCITD:473124003",
        "SCITD:26692000",
        "SCITD:190268003",
        "NCIT:C26800",
        "UMLSCUI:C0020676",
        "UMLSCUI:C0020676",
        "NCIT:C113144",
        "UMLSCUI:C0271801",
        "MONDO:0005420",
        "MONDO:0016410",
        "MONDO:0010140",
        "MONDO:0015778",
        "MONDO:0018612",
        "MONDO:0024264",
        "MONDO:0019861",
        "MONDO:0007699",
        "MONDO:0002002",
        "MONDO:0010142",
        "MONDO:0009437",
        "MONDO:0009154",
        "MONDO:0010139",
        "MONDO:0012360",
        "MONDO:0013757",
        "MONDO:0043103",
        "MONDO:0044331",
        "MONDO:0010475",
        "MONDO:0009150",
        "MONDO:0010134",
        "MONDO:0020503",
        "MONDO:0010135",
        "MONDO:0010136",
        "MONDO:0010137",
        "MONDO:0011792",
        "MONDO:0020716",
        "MONDO:0010133",
        "MONDO:0043073",
        "MONDO:0012436",
        "MONDO:0012593",
        "MONDO:0019853",
        "MONDO:0023558",
        "MONDO:0009479",
        "MONDO:0011365",
        "MONDO:0009149",
        "MONDO:0011078"
    ]
}