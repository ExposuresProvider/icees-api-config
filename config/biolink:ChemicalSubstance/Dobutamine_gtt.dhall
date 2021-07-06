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
    name = "Dobutamine_gtt",
    identifiers = [
        "CHEBI:4670",
        "CHEBI:4671",
        "PUBCHEM:36811",
        "NCIT:C61733",
        "UMLSCUI:C0012963",
        "NCIT:C171751",
        "NCIT:C28997",
        "UMLSCUI:C0700450",
        "NCIT:C65452",
        "UMLSCUI:C0887392",
        "SCTID:387145002",
        "SCTID:3528911000001100",
        "SCTID:26523005",
        "SCTID:90118002",
        "SCTID:121557002",
        "SCTID:319502004",
        "SCTID:775668005",
        "RxNorm:3616",
        "RxNorm:1812167",
        "RxNorm:203121",
        "RxNorm:374370",
        "RxNorm:328216",
        "RxNorm:328218",
        "RxNorm:328215",
        "RxNorm:345811",
        "LOINC:LP46807-1"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "3616"
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