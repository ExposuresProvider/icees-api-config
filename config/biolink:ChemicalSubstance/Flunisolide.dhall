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
    name = "Flunisolide",
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
        "SMILES:O.CC1(C)O[C@@H]2CC3[C@@H]4C[C@H](F)C5:CC(:O)C:CC5(C)[C@H]4[C@@H](O)C[C@]3(C)[C@@]2(O1)C(:O)CO.CC6(C)O[C@@H]7CC8[C@@H]9C[C@H](F)C%10:CC(:O)C:CC%10(C)[C@H]9[C@@H](O)C[C@]8(C)[C@@]7(O6)C(:O)CO",
        "CAS:77326-96-6",
        "MESH:C007734",
        "CHEMBL:CHEMBL1512",
        "PUBCHEM:82153",
        "RXCUI:1245275",
        "RXCUI:1245277",
        "RXCUI:828927",
        "RXCUI:1245270",
        "RXCUI:1245276",
        "RXCUI:1797863",
        "UMLSCUI:C3265693",
        "UMLSCUI:C3265695",
        "UMLSCUI:C0976950",
        "UMLSCUI:C3265688",
        "UMLSCUI:C3265694",
        "UMLSCUI:C3495487",
        "SCTID:116588001",
        "SCTID:43879000",
        "SCTID:427809006",
        "SCTID:374314009",
        "SCTID:331035006",
        "SCTID:66125007",
        "SCTID:422287006"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1245275",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1245277",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "828927",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1245270",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1245276",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797863",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        }
    ]
}