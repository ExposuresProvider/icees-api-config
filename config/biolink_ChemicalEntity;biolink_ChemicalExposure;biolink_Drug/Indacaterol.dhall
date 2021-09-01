let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Indacaterol",
    identifiers = [
        "SMILES:CCC1CC2CC(CC2CC1CC)NCC(O)C3CCC(O)C4NC(:O)C:CC34",
        "CAS:312753-06-3",
        "MESH:C510790",
        "CHEMBL:CHEMBL1346",
        "CHEMBL:CHEMBL1095777",
        "PUBCHEM.COMPOUND:6918554",
        "RxNorm:1114333",
        "RxNorm:1720953",
        "RxNorm:1546335",
        "RxNorm:1720948",
        "RxNorm:1114329",
        "UMLS:C3162480",
        "UMLS:C4058515",
        "UMLS:C3839191",
        "UMLS:C4057844",
        "UMLS:C3162476",
        "SNOMED:703740005",
        "SNOMED:702801003",
        "SNOMED:702802005",
        "SNOMED:703741009",
        "SNOMED:703742002"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1114333",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1720953",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1546335",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1720948",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1114329",
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