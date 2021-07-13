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
        "PUBCHEM:6918554",
        "RXCUI:1114333",
        "RXCUI:1720953",
        "RXCUI:1546335",
        "RXCUI:1720948",
        "RXCUI:1114329",
        "UMLSCUI:C3162480",
        "UMLSCUI:C4058515",
        "UMLSCUI:C3839191",
        "UMLSCUI:C4057844",
        "UMLSCUI:C3162476",
        "SCTID:703740005",
        "SCTID:702801003",
        "SCTID:702802005",
        "SCTID:703741009",
        "SCTID:703742002"
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
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    },
    binning_strategy = max_cutoff 2
}