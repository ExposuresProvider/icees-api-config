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
    name = "Norepinephrine_gtt",
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
        "CHEBI:18357",
        "CHEBI:33569",
        "CHEBI:134857",
        "CHEBI:89951",
        "CHEBI:90022",
        "CHEBI:6257",
        "CHEBI:64317",
        "MONDO:0009123",
        "CHEBI:141146",
        "CHEBI:81386",
        "CHEBI:35640",
        "MONDO:0011479",
        "PUBCHEM:439260",
        "NCIT:C62098",
        "UMLSCUI:C0028351",
        "NCIT:C74868",
        "UMLSCUI:C0202145",
        "NCIT:C2321",
        "UMLSCUI:CL433990",
        "RxNorm:7512",
        "RxNorm:242969",
        "RxNorm:328853",
        "RxNorm:104455",
        "RxNorm:142104",
        "RxNorm:209217",
        "RxNorm:569844",
        "RxNorm:360916",
        "RxNorm:385741",
        "RxNorm:412425",
        "RxNorm:412426",
        "RxNorm:412495",
        "RxNorm:413439",
        "RxNorm:413440",
        "RxNorm:414038",
        "RxNorm:414151",
        "RxNorm:415040",
        "RxNorm:446835",
        "RxNorm:446837",
        "RxNorm:446840",
        "RxNorm:446842",
        "RxNorm:446846",
        "RxNorm:446850",
        "RxNorm:446860",
        "RxNorm:7508",
        "RxNorm:1745276",
        "RxNorm:1745278",
        "RxNorm:1745280",
        "RxNorm:1745281",
        "RxNorm:1164050",
        "RxNorm:1159845",
        "RxNorm:1160403",
        "RxNorm:446836",
        "RxNorm:446843",
        "RxNorm:373112",
        "RxNorm:93118",
        "RxNorm:853242",
        "RxNorm:853243",
        "RxNorm:866823",
        "RxNorm:866824",
        "RxNorm:1010911",
        "RxNorm:1010912",
        "RxNorm:1100200",
        "RxNorm:1100199",
        "RxNorm:1314130",
        "RxNorm:1314131",
        "RxNorm:1360031",
        "RxNorm:1657875",
        "LOINC:LP15271-7",
        "SCTID:111130009",
        "SCTID:103842000",
        "SCTID:104834006",
        "SCTID:117002000",
        "SCTID:131036009",
        "SCTID:131037000",
        "SCTID:131038005",
        "SCTID:16152000",
        "SCTID:292488009",
        "SCTID:45555007",
        "SCTID:763364002",
        "SCTID:767560006",
        "SCTID:767562003",
        "SCTID:769937000",
        "SCTID:769939002",
        "SCTID:771373000",
        "SCTID:772650002",
        "SCTID:776939000",
        "SCTID:780029005",
        "SCTID:782024006"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "7512"
        }
    ]
}