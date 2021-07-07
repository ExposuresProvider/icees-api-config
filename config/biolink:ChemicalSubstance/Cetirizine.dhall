let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
in {
    name = "Cetirizine",
    identifiers = [
        "SMILES:OC(:O)COCCN1CCN(CC1)C(C2CCCCC2)C3CCC(CL)CC3",
        "CAS:83881-51-0",
        "MESH:D017332",
        "CHEMBL:CHEMBL896",
        "CHEMBL:CHEMBL1000",
        "PUBCHEM:2678",
        "RXCUI:1086794",
        "RXCUI:1087169",
        "RXCUI:1549337",
        "RXCUI:1014583",
        "RXCUI:1011485",
        "RXCUI:1014677",
        "RXCUI:1020021",
        "RXCUI:1020022",
        "RXCUI:1020023",
        "RXCUI:1020026",
        "RXCUI:1991946",
        "RXCUI:1020017",
        "RXCUI:1014573",
        "RXCUI:1014577",
        "RXCUI:1014580",
        "RXCUI:1020019",
        "RXCUI:1020025",
        "RXCUI:1428983",
        "RXCUI:1482533",
        "RXCUI:1011482",
        "RXCUI:1014571",
        "RXCUI:1014643",
        "RXCUI:1014673",
        "RXCUI:1014674",
        "RXCUI:1014675",
        "RXCUI:1014676",
        "RXCUI:1014678",
        "UMLSCUI:C2962569",
        "UMLSCUI:C2962778",
        "UMLSCUI:C3855922",
        "UMLSCUI:C1169599",
        "UMLSCUI:C2938114",
        "UMLSCUI:C0712511",
        "UMLSCUI:C0353582",
        "UMLSCUI:C1585241",
        "UMLSCUI:C2741068",
        "UMLSCUI:C0712510",
        "UMLSCUI:C4521179",
        "UMLSCUI:C2722888",
        "UMLSCUI:C2741217",
        "UMLSCUI:C2911898",
        "UMLSCUI:C2756955",
        "UMLSCUI:C2918106",
        "UMLSCUI:C2756141",
        "UMLSCUI:C3651097",
        "UMLSCUI:C3693105",
        "UMLSCUI:C2938112",
        "UMLSCUI:C1168673",
        "UMLSCUI:C1509279",
        "UMLSCUI:C0792562",
        "UMLSCUI:C1509275",
        "UMLSCUI:C2741066",
        "UMLSCUI:C0982629",
        "UMLSCUI:C0975470",
        "SCTID:372523007",
        "SCTID:108656004",
        "SCTID:371746005",
        "SCTID:320818006",
        "SCTID:108655000",
        "SCTID:409491005",
        "SCTID:409492003",
        "SCTID:375573004",
        "SCTID:320820009",
        "SCTID:400462001",
        "SCTID:377275008"
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
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    }
}