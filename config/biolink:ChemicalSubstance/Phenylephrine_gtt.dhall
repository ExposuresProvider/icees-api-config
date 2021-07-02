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
    name = "Phenylephrine_gtt",
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
        "PUBCHEM:6102",
        "CHEBI:8093",
        "CHEBI:134779",
        "CHEBI:91518",
        "CHEBI:132294",
        "CHEBI:8094",
        "NCIT:C62067",
        "UMLSCUI:C0031469",
        "NCIT:C91075",
        "UMLSCUI:C1703892",
        "NCIT:C29363",
        "UMLSCUI:C0031470",
        "NCIT:C66378",
        "UMLSCUI:C0304428",
        "NCIT:C29362",
        "UMLSCUI:C1445789",
        "SCTID:372771005",
        "SCTID:54765002",
        "SCTID:105297002",
        "SCTID:19807811000001104",
        "SCTID:14797011000001106",
        "SCTID:24408211000001106",
        "SCTID:8528911000001104",
        "SCTID:13859511000001102",
        "LOINC:LP16252-6",
        "LOINC:LP392396-0",
        "RxNorm:8163",
        "RxNorm:1666371",
        "RxNorm:1158152",
        "RxNorm:543153",
        "RxNorm:707395",
        "RxNorm:328833",
        "RxNorm:809130",
        "RxNorm:316508",
        "RxNorm:331191",
        "RxNorm:373368",
        "RxNorm:373369"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "8163"
        }
    ]
}