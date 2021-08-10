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
        "RXCUI:1246328",
        "RXCUI:1246290",
        "RXCUI:1246306",
        "RXCUI:1246315",
        "RXCUI:1246317",
        "RXCUI:1246321",
        "RXCUI:1660934",
        "RXCUI:1660938",
        "RXCUI:1246310",
        "RXCUI:1246313",
        "RXCUI:1790644",
        "RXCUI:409732",
        "RXCUI:597829",
        "RXCUI:1790639",
        "RXCUI:1246326",
        "RXCUI:1660933",
        "RXCUI:1660937",
        "RXCUI:1246288",
        "RXCUI:1246304",
        "RXCUI:1246308",
        "RXCUI:1246311",
        "RXCUI:1246314",
        "RXCUI:1246316",
        "RXCUI:1246319",
        "UMLSCUI:C0938989",
        "UMLSCUI:C1876888",
        "UMLSCUI:C1876887",
        "UMLSCUI:C1966262",
        "UMLSCUI:C1966261",
        "UMLSCUI:C1964839",
        "UMLSCUI:C4046150",
        "UMLSCUI:C4046149",
        "UMLSCUI:C2920355",
        "UMLSCUI:C2920360",
        "UMLSCUI:C4238171",
        "UMLSCUI:C1338988",
        "UMLSCUI:C1660662",
        "UMLSCUI:C4238166",
        "UMLSCUI:C1164681",
        "UMLSCUI:C4046869",
        "UMLSCUI:C4046868",
        "UMLSCUI:C1967742",
        "UMLSCUI:C1967737",
        "UMLSCUI:C2920351",
        "UMLSCUI:C2920356",
        "UMLSCUI:C1967738",
        "UMLSCUI:C1967733",
        "UMLSCUI:C1951666",
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
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    },
    binning_strategy = max_cutoff 2
}