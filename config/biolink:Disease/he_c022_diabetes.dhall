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
    name = "he_c022_diabetes",
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
        "NCIT:C2985",
        "UMLSCUI:C0011849",
        "NCIT:C26747",
        "UMLSCUI:C0011860",
        "NCIT:C2986",
        "UMLSCUI:C0011854",
        "SCITD:714628002",
        "SCITD:15777000",
        "SCITD:405749004",
        "MONDO:0005015",
        "MONDO:0006920",
        "MONDO:0009297",
        "MONDO:0005148",
        "MONDO:0005147",
        "MONDO:0006507",
        "CHEBI:76916",
        "MONDO:0005406",
        "MONDO:0007669",
        "MONDO:0018911",
        "MONDO:0005827",
        "MONDO:0007906",
        "MONDO:0018883",
        "MONDO:0010785",
        "MONDO:0007455",
        "MONDO:0009100",
        "MONDO:0007452",
        "MONDO:0021752",
        "MONDO:0009216",
        "MONDO:0001583",
        "MONDO:0007450",
        "MONDO:0007454",
        "MONDO:0016391",
        "MONDO:0022993",
        "MONDO:0023227",
        "MONDO:0007453",
        "MONDO:0010894",
        "MONDO:0011643",
        "MONDO:0011667",
        "MONDO:0011668",
        "MONDO:0012348",
        "MONDO:0012513",
        "MONDO:0012818",
        "MONDO:0012921",
        "MONDO:0015790",
        "MONDO:0010863",
        "MONDO:0011068",
        "MONDO:0011168",
        "MONDO:0012919",
        "MONDO:0015967",
        "MONDO:0016383",
        "MONDO:0019193",
        "MONDO:0012819",
        "MONDO:0014488",
        "MONDO:0010020",
        "MONDO:0019846",
        "MONDO:0010773",
        "MONDO:0020525",
        "MONDO:0007834",
        "MONDO:0010861",
        "MONDO:0010862",
        "MONDO:0010864",
        "MONDO:0010950",
        "MONDO:0011167",
        "MONDO:0005266",
        "MONDO:0011016",
        "MONDO:0011033",
        "MONDO:0011123",
        "MONDO:0011302",
        "MONDO:0011572",
        "MONDO:0012422",
        "MONDO:0012920",
        "MONDO:0012961",
        "MONDO:0013078",
        "MONDO:0000065",
        "MONDO:0007451",
        "MONDO:0010581",
        "MONDO:0011027",
        "MONDO:0011072",
        "MONDO:0011073",
        "MONDO:0011363",
        "MONDO:0011507",
        "MONDO:0011955",
        "MONDO:0012480",
        "MONDO:0012522",
        "MONDO:0010582",
        "MONDO:0015887",
        "MONDO:0010012",
        "MONDO:0013240",
        "MONDO:0013242",
        "MONDO:0013647",
        "MONDO:0014589",
        "MONDO:0014674",
        "MONDO:0010026",
        "MONDO:0008874",
        "MONDO:0008812",
        "MONDO:0019207",
        "MONDO:0022435",
        "MONDO:0011386",
        "MONDO:0010798",
        "MONDO:0012436",
        "MONDO:0012962",
        "MONDO:0012963",
        "MONDO:0012971",
        "MONDO:0009432",
        "MONDO:0012969",
        "MONDO:0012970",
        "MONDO:0010813",
        "MONDO:0012966",
        "MONDO:0009101",
        "MONDO:0009419",
        "MONDO:0012192",
        "MONDO:0012520",
        "MONDO:0018105",
        "MONDO:0009192",
        "MONDO:0010255",
        "MONDO:0011273",
        "MONDO:0008023",
        "MONDO:0014458",
        "MONDO:0007922",
        "MONDO:0020569",
        "MONDO:0010580",
        "MONDO:0008743",
        "MONDO:0010802",
        "MONDO:0009099",
        "MONDO:0014523",
        "MONDO:0008242",
        "MONDO:0009874",
        "MONDO:0010800",
        "MONDO:0014352",
        "MONDO:0009575",
        "MONDO:0014315",
        "MONDO:0009983",
        "MONDO:0011149",
        "MONDO:0008843"
    ]
}