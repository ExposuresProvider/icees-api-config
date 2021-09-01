let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Ciclesonide",
    identifiers = [
        "SMILES:CC(C)C(:O)OCC(:O)[C@@]12O[C@@H](O[C@@H]1C[C@H]3[C@@H]4CCC5:CC(:O)C:C[C@]5(C)[C@H]4[C@@H](O)C[C@]23C)C6CCCCC6",
        "CAS:126544-47-6",
        "MESH:C120481",
        "CHEMBL:CHEMBL2040682",
        "PUBCHEM.COMPOUND:6918155",
        "RxNorm:799037",
        "RxNorm:799040",
        "RxNorm:1797843",
        "RxNorm:1797840",
        "RxNorm:799034",
        "RxNorm:799038",
        "RxNorm:1797841",
        "RxNorm:1797838",
        "UMLS:C2344608",
        "UMLS:C2344611",
        "UMLS:C2341618",
        "UMLS:C3257739",
        "UMLS:C2344605",
        "UMLS:C2344609",
        "UMLS:C2341615",
        "UMLS:C3257733",
        "SNOMED:417000005",
        "SNOMED:416359000",
        "SNOMED:422684008",
        "SNOMED:417420004",
        "SNOMED:416739001",
        "SNOMED:424048001",
        "SNOMED:423579004"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "799037",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "799040",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797843",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797840",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "799034",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "799038",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797841",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797838",
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