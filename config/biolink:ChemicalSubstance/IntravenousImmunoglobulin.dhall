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
    name = "IntravenousImmunoglobulin",
    identifiers = [
        "PUBCHEM:135312669",
        "PUBCHEM:135331634",
        "PUBCHEM:347911208",
        "PUBCHEM:347911474",
        "NCIT:C121331",
        "LOINC:LA9437-0",
        "LOINC:LA11258-3",
        "LOINC:LA11347-4",
        "LOINC:LA18623-1",
        "LOINC:LP31933-2",
        "LOINC:LA11245-0",
        "LOINC:LA11259-1",
        "RxNorm:547195",
        "RxNorm:547196",
        "RxNorm:797550",
        "RxNorm:797551",
        "RxNorm:797553",
        "RxNorm:797557",
        "RxNorm:353532",
        "RxNorm:353533",
        "RxNorm:541554",
        "RxNorm:541558",
        "RxNorm:35465",
        "RxNorm:42386",
        "RxNorm:153913",
        "RxNorm:284214",
        "RxNorm:343815",
        "RxNorm:343818",
        "RxNorm:351324",
        "RxNorm:351326",
        "RxNorm:545184",
        "RxNorm:584494",
        "RxNorm:584495",
        "RxNorm:584499",
        "RxNorm:758999",
        "RxNorm:829364",
        "RxNorm:829366",
        "RxNorm:617618",
        "RxNorm:617621",
        "RxNorm:2167150",
        "RxNorm:2196295",
        "RxNorm:2117971",
        "RxNorm:2170634",
        "RxNorm:796972",
        "RxNorm:311658",
        "RxNorm:2123035",
        "RxNorm:2123036",
        "RxNorm:2123039",
        "RxNorm:2123040",
        "RxNorm:2123043",
        "RxNorm:2123044",
        "RxNorm:2123037",
        "RxNorm:2123042",
        "RxNorm:1873767",
        "RxNorm:1873769",
        "RxNorm:1876670",
        "RxNorm:1876671",
        "RxNorm:1876672",
        "RxNorm:1876673",
        "RxNorm:1876674",
        "RxNorm:1813409",
        "RxNorm:1813414",
        "RxNorm:1813415",
        "RxNorm:1813416",
        "RxNorm:1813417",
        "RxNorm:1813420",
        "RxNorm:1813423",
        "RxNorm:1813424",
        "RxNorm:102970",
        "RxNorm:106470",
        "RxNorm:106479",
        "RxNorm:727515",
        "RxNorm:142061",
        "RxNorm:152590",
        "RxNorm:153530",
        "RxNorm:758997",
        "RxNorm:202189",
        "RxNorm:204406",
        "RxNorm:797555",
        "RxNorm:205845",
        "RxNorm:205847",
        "RxNorm:205849",
        "RxNorm:205851",
        "RxNorm:205853",
        "SCITD:350344000"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Substance",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "42386"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    }
}