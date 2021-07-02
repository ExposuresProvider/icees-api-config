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
    name = "Mometasone",
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
        "SMILES:C[C@@H]1C[C@H]2[C@@H]3CCC4:CC(:O)C:C[C@]4(C)[C@@]3(CL)[C@@H](O)C[C@]2(C)[C@@]1(O)C(:O)CCL",
        "CAS:105102-22-5",
        "CHEMBL:CHEMBL1161",
        "PUBCHEM:441335",
        "RXCUI:1148523",
        "RXCUI:1797870",
        "RXCUI:92582",
        "RXCUI:92583",
        "RXCUI:92584",
        "RXCUI:746804",
        "RXCUI:746811",
        "RXCUI:746813",
        "RXCUI:746815",
        "RXCUI:790280",
        "RXCUI:790284",
        "RXCUI:1536144",
        "RXCUI:1536148",
        "RXCUI:1660934",
        "RXCUI:1660938",
        "RXCUI:1246310",
        "RXCUI:1246313",
        "RXCUI:1606026",
        "RXCUI:1666829",
        "RXCUI:1734665",
        "RXCUI:1995988",
        "RXCUI:1148519",
        "RXCUI:151029",
        "RXCUI:151030",
        "RXCUI:311753",
        "RXCUI:1797865",
        "RXCUI:1536147",
        "RXCUI:1660937",
        "RXCUI:1246311",
        "RXCUI:1536142",
        "RXCUI:1660933",
        "RXCUI:1246308",
        "RXCUI:1606021",
        "RXCUI:746803",
        "RXCUI:746810",
        "RXCUI:746812",
        "RXCUI:746814",
        "RXCUI:790278",
        "RXCUI:790283",
        "RXCUI:1995983",
        "UMLSCUI:C3204593",
        "UMLSCUI:C0594491",
        "UMLSCUI:C0306065",
        "UMLSCUI:C0306066",
        "UMLSCUI:C0306067",
        "UMLSCUI:C1966488",
        "UMLSCUI:C1966485",
        "UMLSCUI:C1966486",
        "UMLSCUI:C1966487",
        "UMLSCUI:C2341622",
        "UMLSCUI:C2341624",
        "UMLSCUI:C3817741",
        "UMLSCUI:C3817740",
        "UMLSCUI:C4046150",
        "UMLSCUI:C4046149",
        "UMLSCUI:C2920355",
        "UMLSCUI:C2920360",
        "UMLSCUI:C3892495",
        "UMLSCUI:C4051562",
        "UMLSCUI:C4080470",
        "UMLSCUI:C4542053",
        "UMLSCUI:C3204589",
        "UMLSCUI:C0590311",
        "UMLSCUI:C0590312",
        "UMLSCUI:C0978712",
        "UMLSCUI:C0978713",
        "UMLSCUI:C3820055",
        "UMLSCUI:C4046868",
        "UMLSCUI:C2920356",
        "UMLSCUI:C3820057",
        "UMLSCUI:C4046869",
        "UMLSCUI:C2920351",
        "UMLSCUI:C3892496",
        "UMLSCUI:C1968000",
        "UMLSCUI:C1968003",
        "UMLSCUI:C1968004",
        "UMLSCUI:C1968005",
        "UMLSCUI:C2341620",
        "UMLSCUI:C2341623",
        "UMLSCUI:C4542048",
        "SCTID:407753001",
        "SCTID:407752006",
        "SCTID:447212007",
        "SCTID:332049000",
        "SCTID:332051001",
        "SCTID:332050000",
        "SCTID:331080007",
        "SCTID:417401001",
        "SCTID:408026006",
        "SCTID:408013007",
        "SCTID:447511001",
        "SCTID:447510000",
        "SCTID:395990009",
        "SCTID:395802006",
        "SCTID:395803001",
        "SCTID:75203002",
        "SCTID:407754007"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1148523",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797870",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "92582",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "92583",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "92584",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "746804",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "746811",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "746813",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "746815",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "790280",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "790284",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1536144",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1536148",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1606026",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1666829",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1734665",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1995988",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1148519",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "151029",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "151030",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "311753",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797865",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1536147",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1536142",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1606021",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "746803",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "746810",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "746812",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "746814",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "790278",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "790283",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1995983",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        }
    ]
}