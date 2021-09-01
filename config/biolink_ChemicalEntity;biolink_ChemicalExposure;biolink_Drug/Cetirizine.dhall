let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Cetirizine",
    identifiers = [
        "SMILES:OC(:O)COCCN1CCN(CC1)C(C2CCCCC2)C3CCC(CL)CC3",
        "CAS:83881-51-0",
        "MESH:D017332",
        "CHEMBL:CHEMBL896",
        "CHEMBL:CHEMBL1000",
        "PUBCHEM.COMPOUND:2678",
        "RxNorm:1086794",
        "RxNorm:1087169",
        "RxNorm:1549337",
        "RxNorm:1014583",
        "RxNorm:1011485",
        "RxNorm:1014677",
        "RxNorm:1020021",
        "RxNorm:1020022",
        "RxNorm:1020023",
        "RxNorm:1020026",
        "RxNorm:1991946",
        "RxNorm:1020017",
        "RxNorm:1014573",
        "RxNorm:1014577",
        "RxNorm:1014580",
        "RxNorm:1020019",
        "RxNorm:1020025",
        "RxNorm:1428983",
        "RxNorm:1482533",
        "RxNorm:1011482",
        "RxNorm:1014571",
        "RxNorm:1014643",
        "RxNorm:1014673",
        "RxNorm:1014674",
        "RxNorm:1014675",
        "RxNorm:1014676",
        "RxNorm:1014678",
        "UMLS:C2962569",
        "UMLS:C2962778",
        "UMLS:C3855922",
        "UMLS:C1169599",
        "UMLS:C2938114",
        "UMLS:C0712511",
        "UMLS:C0353582",
        "UMLS:C1585241",
        "UMLS:C2741068",
        "UMLS:C0712510",
        "UMLS:C4521179",
        "UMLS:C2722888",
        "UMLS:C2741217",
        "UMLS:C2911898",
        "UMLS:C2756955",
        "UMLS:C2918106",
        "UMLS:C2756141",
        "UMLS:C3651097",
        "UMLS:C3693105",
        "UMLS:C2938112",
        "UMLS:C1168673",
        "UMLS:C1509279",
        "UMLS:C0792562",
        "UMLS:C1509275",
        "UMLS:C2741066",
        "UMLS:C0982629",
        "UMLS:C0975470",
        "SNOMED:372523007",
        "SNOMED:108656004",
        "SNOMED:371746005",
        "SNOMED:320818006",
        "SNOMED:108655000",
        "SNOMED:409491005",
        "SNOMED:409492003",
        "SNOMED:375573004",
        "SNOMED:320820009",
        "SNOMED:400462001",
        "SNOMED:377275008"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1086794",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1087169",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1549337",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1014583",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1011485",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1014677",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1020021",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1020022",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1020023",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1020026",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1991946",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1020017",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1014573",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1014577",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1014580",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1020019",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1020025",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1428983",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1482533",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1011482",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1014571",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1014643",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1014673",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1014674",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1014675",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1014676",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1014678",
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