let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Fexofenadine",
    identifiers = [
        "SMILES:CC(C)(C(O):O)C1CCC(CC1)C(O)CCCN2CCC(CC2)C(O)(C3CCCCC3)C4CCCCC4",
        "CAS:159389-12-5",
        "CAS:76815-58-2",
        "CAS:83799-24-0",
        "MESH:C093230",
        "CHEMBL:CHEMBL914",
        "PUBCHEM.COMPOUND:3348",
        "RxNorm:1116528",
        "RxNorm:1670344",
        "RxNorm:1192737",
        "RxNorm:997512",
        "RxNorm:997515",
        "RxNorm:997422",
        "RxNorm:997484",
        "RxNorm:997493",
        "RxNorm:997502",
        "RxNorm:1488053",
        "RxNorm:1190331",
        "RxNorm:1190334",
        "RxNorm:997406",
        "RxNorm:997415",
        "RxNorm:997420",
        "RxNorm:997482",
        "RxNorm:997488",
        "RxNorm:997491",
        "RxNorm:997494",
        "RxNorm:997501",
        "RxNorm:997550",
        "UMLS:C3163531",
        "UMLS:C4048787",
        "UMLS:C3247651",
        "UMLS:C0716180",
        "UMLS:C1616745",
        "UMLS:C0938972",
        "UMLS:C1965892",
        "UMLS:C1813542",
        "UMLS:C0875865",
        "UMLS:C3709686",
        "UMLS:C3245135",
        "UMLS:C3245138",
        "UMLS:C0976924",
        "UMLS:C1576499",
        "UMLS:C0976919",
        "UMLS:C1964496",
        "UMLS:C0976920",
        "UMLS:C1813539",
        "UMLS:C0976921",
        "UMLS:C0976923",
        "UMLS:C0976918",
        "SNOMED:372522002",
        "SNOMED:108653007",
        "SNOMED:376716006",
        "SNOMED:371748006",
        "SNOMED:320828002",
        "SNOMED:320826003",
        "SNOMED:371749003",
        "SNOMED:108650005",
        "SNOMED:423074002",
        "SNOMED:371750003",
        "SNOMED:400883003",
        "SNOMED:371751004",
        "SNOMED:409176001"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1116528",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1670344",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1192737",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997512",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997515",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997422",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997484",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997493",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997502",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1488053",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1190331",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1190334",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997406",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997415",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997420",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997482",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997488",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997491",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997494",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997501",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "997550",
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