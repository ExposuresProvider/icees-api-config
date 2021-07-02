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
    name = "ObesityDx",
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
        "MONDO:0008300",
        "MONDO:0009763",
        "MONDO:0010961",
        "MONDO:0011122",
        "MONDO:0011419",
        "MONDO:0012335",
        "MONDO:0013267",
        "MONDO:0013483",
        "MONDO:0013991",
        "MONDO:0013992",
        "MONDO:0014309",
        "MONDO:0015825",
        "MONDO:0018244",
        "MONDO:0019115",
        "MONDO:0019506",
        "MONDO:0044272",
        "MONDO:0044283",
        "SCTID:111036000",
        "SCTID:190965006",
        "SCTID:238132000",
        "SCTID:238133005",
        "SCTID:238134004",
        "SCTID:238136002",
        "SCTID:248311001",
        "SCTID:248312008",
        "SCTID:270486005",
        "SCTID:290439001",
        "SCTID:292464007",
        "SCTID:294493008",
        "SCTID:295509007",
        "SCTID:296526005",
        "SCTID:297500005",
        "SCTID:298464002",
        "SCTID:360566006",
        "SCTID:363247006",
        "SCTID:414438005",
        "SCTID:414916001",
        "SCTID:414918000",
        "SCTID:414919008",
        "SCTID:415530009",
        "SCTID:444862003",
        "SCTID:44772007",
        "SCTID:5036006",
        "SCTID:53146006",
        "SCTID:722596001",
        "SCTID:82793005",
        "SCTID:83911000119104",
        "HP:0001513",
        "HP:0025499",
        "HP:0025500",
        "HP:0025501",
        "MONDO:0044283",
        "HP:0001513",
        "HP:0025499",
        "HP:0025500",
        "HP:0025501",
        "ICD9:278",
        "ICD10:E66.%(EXCEPTICD10:E66.3)",
        "NCIT:C3283",
        "UMLSCUI:C0028754"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(278[.]).*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(E66.[^3]).*"
        }
    ]
}