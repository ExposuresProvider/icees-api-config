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
    name = "BrainNatriureticPeptide",
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    },
    identifiers = [
        "CHEBI:135919",
        "NCIT:C74735",
        "UMLSCUI:C1095989",
        "NCIT:C88523",
        "UMLSCUI:CL449078",
        "NCIT:C88524",
        "UMLSCUI:C0754710",
        "SCTID:390917008",
        "SCTID:1012131000000106",
        "SCTID:407059007",
        "SCTID:390293004",
        "SCTID:389561001",
        "SCTID:407059007",
        "SCTID:407060002",
        "SCTID:414798009",
        "LOINC:LP94520-1",
        "LOINC:LP28609-3",
        "LOINC:42637-9",
        "LOINC:LP120961-0",
        "RxNorm:358794",
        "RxNorm:575730",
        "RxNorm:349294",
        "RxNorm:351985",
        "PUBCHEM:5332598",
        "PUBCHEM:1139211146",
        "PUBCHEM:131850025",
        "PUBCHEM:102601995",
        "PUBCHEM:101609258",
        "PUBCHEM:101599692",
        "PUBCHEM:74763981",
        "PUBCHEM:71308564",
        "PUBCHEM:71308561",
        "PUBCHEM:71308373",
        "PUBCHEM:71306940",
        "PUBCHEM:56841835",
        "PUBCHEM:53325981",
        "PUBCHEM:45588097",
        "PUBCHEM:16132422"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "30934-4"
        }
    ]
}