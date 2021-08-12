let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Formoterol",
    identifiers = [
        "SMILES:COC1CCC(CC(C)NCC(O)C2CCC(O)C(NC:O)C2)CC1",
        "CAS:73573-87-2",
        "CHEMBL:CHEMBL605993",
        "CHEMBL:CHEMBL1256786",
        "CHEMBL:CHEMBL1363",
        "PUBCHEM.COMPOUND:3410",
        "PUBCHEM.COMPOUND:3083544",
        "PUBCHEM.COMPOUND:3034756",
        "RxNorm:1246328",
        "RxNorm:1246290",
        "RxNorm:1246306",
        "RxNorm:1246315",
        "RxNorm:1246317",
        "RxNorm:1246321",
        "RxNorm:1660934",
        "RxNorm:1660938",
        "RxNorm:1246310",
        "RxNorm:1246313",
        "RxNorm:1790644",
        "RxNorm:409732",
        "RxNorm:597829",
        "RxNorm:1790639",
        "RxNorm:1246326",
        "RxNorm:1660933",
        "RxNorm:1660937",
        "RxNorm:1246288",
        "RxNorm:1246304",
        "RxNorm:1246308",
        "RxNorm:1246311",
        "RxNorm:1246314",
        "RxNorm:1246316",
        "RxNorm:1246319",
        "UMLS:C0938989",
        "UMLS:C1876888",
        "UMLS:C1876887",
        "UMLS:C1966262",
        "UMLS:C1966261",
        "UMLS:C1964839",
        "UMLS:C4046150",
        "UMLS:C4046149",
        "UMLS:C2920355",
        "UMLS:C2920360",
        "UMLS:C4238171",
        "UMLS:C1338988",
        "UMLS:C1660662",
        "UMLS:C4238166",
        "UMLS:C1164681",
        "UMLS:C4046869",
        "UMLS:C4046868",
        "UMLS:C1967742",
        "UMLS:C1967737",
        "UMLS:C2920351",
        "UMLS:C2920356",
        "UMLS:C1967738",
        "UMLS:C1967733",
        "UMLS:C1951666",
        "SCTID:447212007",
        "SCTID:429505002",
        "SCTID:426833006",
        "SCTID:134498003",
        "SCTID:134499006",
        "SCTID:447511001",
        "SCTID:447510000",
        "SCTID:408023003",
        "SCTID:414289007",
        "SCTID:129490002",
        "SCTID:447213002",
        "SCTID:386171009",
        "SCTID:413717007"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1660934",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1660938",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1246310",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1246313",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1660937",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1246311",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1660933",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1246308",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1246290",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1246306",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1246315",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1246317",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "409732",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "597829",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1246288",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1246304",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1246314",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1246316",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1246328",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1246321",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1790644",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1790639",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1246326",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1246319",
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