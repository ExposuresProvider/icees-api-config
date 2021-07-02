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
    name = "he_b007_hypertension",
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
        "MONDO:0005044",
        "MONDO:0001134",
        "MONDO:0015512",
        "MONDO:0007781",
        "MONDO:0024664",
        "MONDO:0005081",
        "MONDO:0006810",
        "MONDO:0001105",
        "MONDO:0006947",
        "MONDO:0100078",
        "MONDO:0017154",
        "MONDO:0001784",
        "MONDO:0006846",
        "MONDO:0015924",
        "MONDO:0001151",
        "MONDO:0021969",
        "MONDO:0024533",
        "MONDO:0001999",
        "MONDO:0007211",
        "MONDO:0008585",
        "MONDO:0001133",
        "MONDO:0009468",
        "MONDO:0014897",
        "MONDO:0018835",
        "MONDO:0023530",
        "MONDO:0008347",
        "MONDO:0013781",
        "MONDO:0014134",
        "MONDO:0014135",
        "MONDO:0014136",
        "MONDO:0019162",
        "MONDO:0007080",
        "MONDO:0008344",
        "MONDO:0017147",
        "MONDO:0014875",
        "MONDO:0017148",
        "MONDO:0007772",
        "MONDO:0012458",
        "MONDO:0007357",
        "MONDO:0008071",
        "MONDO:0011384",
        "MONDO:0011440",
        "MONDO:0011815",
        "MONDO:0012109",
        "MONDO:0012459",
        "MONDO:0012587",
        "MONDO:0012599",
        "MONDO:0022430",
        "MONDO:0007329",
        "MONDO:0009934",
        "MONDO:0014151",
        "MONDO:0009935",
        "MONDO:0011517",
        "MONDO:0017157",
        "MONDO:0023124",
        "MONDO:0010003",
        "MONDO:0010776",
        "MONDO:0012930",
        "MONDO:0013458",
        "MONDO:0010880",
        "MONDO:0007917",
        "MONDO:0012032",
        "MONDO:0014352",
        "MONDO:0013024",
        "MONDO:0011243",
        "MONDO:0008169",
        "NCIT:C3117",
        "UMLSCUI:C0020538",
        "NCIT:C55060",
        "UMLSCUI:C1963138",
        "NCIT:C168203",
        "UMLSCUI:C0455405",
        "NCIT:C3120",
        "UMLSCUI:C0020542",
        "NCIT:C55068",
        "UMLSCUI:C1963220",
        "NCIT:C3119",
        "UMLSCUI:C0020541",
        "NCIT:C537095",
        "LOINC:LA7444-8",
        "LOINC:LA19982-0",
        "LOINC:LP74941-3",
        "LOINC:LP128702-0",
        "LOINC:66618-0",
        "SCITD:23130000",
        "SCITD:863191000000102",
        "SCITD:843841000000109",
        "SCITD:59621000",
        "SCITD:10725009",
        "SCITD:697929007",
        "SCITD:70272006",
        "SCITD:9621000",
        "MESH:D006973",
        "MESH:D000075222",
        "MESH:D006978",
        "MESH:D006974",
        "MESH:D006976",
        "MESH:D009798",
        "MESH:D006977",
        "MESH:D000081029"
    ]
}