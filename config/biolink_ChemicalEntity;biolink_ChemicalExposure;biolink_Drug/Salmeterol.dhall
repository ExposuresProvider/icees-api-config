let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Salmeterol",
    identifiers = [
        "SMILES:OCC1CC(CCC1O)C(O)CNCCCCCCOCCCCC2CCCCC2",
        "CAS:89365-50-4",
        "CHEMBL:CHEMBL1263",
        "PUBCHEM.COMPOUND:5152",
        "RxNorm:866047",
        "RxNorm:866049",
        "RxNorm:896165",
        "RxNorm:896185",
        "RxNorm:896190",
        "RxNorm:896212",
        "RxNorm:896222",
        "RxNorm:896229",
        "RxNorm:896235",
        "RxNorm:896237",
        "RxNorm:896243",
        "RxNorm:896245",
        "RxNorm:896271",
        "RxNorm:896273",
        "RxNorm:1918199",
        "RxNorm:1918205",
        "RxNorm:1918211",
        "RxNorm:312897",
        "RxNorm:896231",
        "RxNorm:896236",
        "RxNorm:896239",
        "RxNorm:896244",
        "RxNorm:896267",
        "RxNorm:896272",
        "RxNorm:866044",
        "RxNorm:866048",
        "RxNorm:896161",
        "RxNorm:896184",
        "RxNorm:896186",
        "RxNorm:896209",
        "RxNorm:896218",
        "RxNorm:896228",
        "RxNorm:1918194",
        "RxNorm:1918203",
        "RxNorm:1918209",
        "UMLS:C2723055",
        "UMLS:C2723057",
        "UMLS:C2365544",
        "UMLS:C1965900",
        "UMLS:C2365549",
        "UMLS:C1965902",
        "UMLS:C2365556",
        "UMLS:C1965904",
        "UMLS:C2731892",
        "UMLS:C2731893",
        "UMLS:C2731899",
        "UMLS:C2731901",
        "UMLS:C2731918",
        "UMLS:C2731919",
        "UMLS:C4473486",
        "UMLS:C4473491",
        "UMLS:C4306094",
        "UMLS:C0980094",
        "UMLS:C2731888",
        "UMLS:C1967679",
        "UMLS:C2731895",
        "UMLS:C2731900",
        "UMLS:C2731914",
        "UMLS:C1724805",
        "UMLS:C2723052",
        "UMLS:C2723056",
        "UMLS:C2731853",
        "UMLS:C2731864",
        "UMLS:C2731865",
        "UMLS:C1967982",
        "UMLS:C2731881",
        "UMLS:C1967976",
        "UMLS:C4306273",
        "UMLS:C4306272",
        "UMLS:C4306271",
        "SNOMED:372515005",
        "SNOMED:108606009",
        "SNOMED:108605008",
        "SNOMED:411106009",
        "SNOMED:320244004",
        "SNOMED:376941005",
        "SNOMED:376975006",
        "SNOMED:376030006",
        "SNOMED:320249009",
        "SNOMED:320248001",
        "SNOMED:320250009",
        "SNOMED:320274007",
        "SNOMED:320276009",
        "SNOMED:320275008",
        "SNOMED:320280004",
        "SNOMED:320277000",
        "SNOMED:320279002"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896165",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896185",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896190",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896212",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896222",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896229",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896235",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896237",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896243",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896245",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896271",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896273",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1918199",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1918205",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1918211",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896161",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896184",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896186",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896209",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896218",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896228",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896231",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896236",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896239",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896244",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896267",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896272",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1918194",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1918203",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1918209",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "866047",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "866049",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "312897",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "866044",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "866048",
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