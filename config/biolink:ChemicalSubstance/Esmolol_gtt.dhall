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
    name = "Esmolol_gtt",
    identifiers = [
        "CHEBI:88206",
        "CHEBI:4857",
        "NCIT:C72617",
        "UMLSCUI:C0116569",
        "NCIT:C47519",
        "UMLSCUI:C0700606",
        "PUBCHEM:126961356",
        "PUBCHEM:101731067",
        "PUBCHEM:101731066",
        "PUBCHEM:71587371",
        "PUBCHEM:71316428",
        "PUBCHEM:71316427",
        "PUBCHEM:71316422",
        "PUBCHEM:66587026",
        "PUBCHEM:46878362",
        "PUBCHEM:28125476",
        "PUBCHEM:25271656",
        "PUBCHEM:133620",
        "PUBCHEM:104769",
        "PUBCHEM:59768",
        "RxNorm:49737",
        "RxNorm:1736540",
        "RxNorm:377103",
        "RxNorm:1736542",
        "RxNorm:1162506",
        "RxNorm:92016",
        "RxNorm:329732",
        "RxNorm:405860",
        "RxNorm:330690",
        "RxNorm:979427",
        "RxNorm:979431",
        "RxNorm:979435",
        "RxNorm:567098",
        "RxNorm:576525",
        "RxNorm:567102",
        "RxNorm:1736544",
        "RxNorm:1736557",
        "RxNorm:979429",
        "RxNorm:979433",
        "RxNorm:979437",
        "RxNorm:238246",
        "RxNorm:403885",
        "RxNorm:238245",
        "SCTID:372847006",
        "SCTID:77856005",
        "SCTID:35318005",
        "SCTID:293969000",
        "SCTID:292427001",
        "SCTID:318624002",
        "SCTID:775833007",
        "SCTID:17033711000001101",
        "SCTID:374170004",
        "SCTID:407866009"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "49737"
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
            "biolink:Dru"
        ]
    }
}