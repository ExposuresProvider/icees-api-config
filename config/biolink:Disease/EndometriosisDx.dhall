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
    name = "EndometriosisDx",
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
        "SCTID:396224008",
        "SCTID:129103003",
        "SCTID:53913001",
        "SCTID:724457006",
        "SCTID:26681001",
        "SCTID:128726006",
        "SCTID:198247003",
        "SCTID:35543003",
        "SCTID:50993001",
        "SCTID:233651009",
        "SCTID:44601009",
        "SCTID:717700009",
        "SCTID:396223002",
        "SCTID:266589005",
        "SCTID:38780008",
        "SCTID:76376003",
        "SCTID:61640006",
        "SCTID:9563009",
        "SCTID:57493005",
        "SCTID:89001007",
        "SCTID:65099004",
        "SCTID:8421002",
        "SCTID:5562006",
        "SCTID:17829005",
        "SCTID:397318008",
        "SCTID:237115002",
        "SCTID:237117005",
        "SCTID:84305006",
        "SCTID:735621005",
        "SCTID:22611009",
        "SCTID:10535001",
        "SCTID:5327000",
        "SCTID:64286001",
        "SCTID:717698000",
        "SCTID:717699008",
        "SCTID:724456002",
        "SCTID:198251001",
        "SCTID:724455003",
        "SCTID:52533003",
        "SCTID:314049009",
        "SCTID:712584009",
        "SCTID:715806006",
        "SCTID:713174005",
        "SCTID:724454004",
        "SCTID:416155004",
        "SCTID:263638005"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(617)[.].*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(N80)[.].*"
        }
    ]
}