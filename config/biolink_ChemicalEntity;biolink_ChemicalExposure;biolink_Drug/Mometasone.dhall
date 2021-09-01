let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Mometasone",
    identifiers = [
        "SMILES:C[C@@H]1C[C@H]2[C@@H]3CCC4:CC(:O)C:C[C@]4(C)[C@@]3(CL)[C@@H](O)C[C@]2(C)[C@@]1(O)C(:O)CCL",
        "CAS:105102-22-5",
        "CHEMBL:CHEMBL1161",
        "PUBCHEM.COMPOUND:441335",
        "RxNorm:1148523",
        "RxNorm:1797870",
        "RxNorm:92582",
        "RxNorm:92583",
        "RxNorm:92584",
        "RxNorm:746804",
        "RxNorm:746811",
        "RxNorm:746813",
        "RxNorm:746815",
        "RxNorm:790280",
        "RxNorm:790284",
        "RxNorm:1536144",
        "RxNorm:1536148",
        "RxNorm:1660934",
        "RxNorm:1660938",
        "RxNorm:1246310",
        "RxNorm:1246313",
        "RxNorm:1606026",
        "RxNorm:1666829",
        "RxNorm:1734665",
        "RxNorm:1995988",
        "RxNorm:1148519",
        "RxNorm:151029",
        "RxNorm:151030",
        "RxNorm:311753",
        "RxNorm:1797865",
        "RxNorm:1536147",
        "RxNorm:1660937",
        "RxNorm:1246311",
        "RxNorm:1536142",
        "RxNorm:1660933",
        "RxNorm:1246308",
        "RxNorm:1606021",
        "RxNorm:746803",
        "RxNorm:746810",
        "RxNorm:746812",
        "RxNorm:746814",
        "RxNorm:790278",
        "RxNorm:790283",
        "RxNorm:1995983",
        "UMLS:C3204593",
        "UMLS:C0594491",
        "UMLS:C0306065",
        "UMLS:C0306066",
        "UMLS:C0306067",
        "UMLS:C1966488",
        "UMLS:C1966485",
        "UMLS:C1966486",
        "UMLS:C1966487",
        "UMLS:C2341622",
        "UMLS:C2341624",
        "UMLS:C3817741",
        "UMLS:C3817740",
        "UMLS:C4046150",
        "UMLS:C4046149",
        "UMLS:C2920355",
        "UMLS:C2920360",
        "UMLS:C3892495",
        "UMLS:C4051562",
        "UMLS:C4080470",
        "UMLS:C4542053",
        "UMLS:C3204589",
        "UMLS:C0590311",
        "UMLS:C0590312",
        "UMLS:C0978712",
        "UMLS:C0978713",
        "UMLS:C3820055",
        "UMLS:C4046868",
        "UMLS:C2920356",
        "UMLS:C3820057",
        "UMLS:C4046869",
        "UMLS:C2920351",
        "UMLS:C3892496",
        "UMLS:C1968000",
        "UMLS:C1968003",
        "UMLS:C1968004",
        "UMLS:C1968005",
        "UMLS:C2341620",
        "UMLS:C2341623",
        "UMLS:C4542048",
        "SNOMED:407753001",
        "SNOMED:407752006",
        "SNOMED:447212007",
        "SNOMED:332049000",
        "SNOMED:332051001",
        "SNOMED:332050000",
        "SNOMED:331080007",
        "SNOMED:417401001",
        "SNOMED:408026006",
        "SNOMED:408013007",
        "SNOMED:447511001",
        "SNOMED:447510000",
        "SNOMED:395990009",
        "SNOMED:395802006",
        "SNOMED:395803001",
        "SNOMED:75203002",
        "SNOMED:407754007"
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
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalEntity",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    },
    binning_strategy = max_cutoff 2
}