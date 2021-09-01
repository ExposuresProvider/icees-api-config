let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Arformoterol",
    identifiers = [
        "SMILES:COC1CCC(C[C@@H](C)NC[C@H](O)C2CCC(O)C(NC:O)C2)CC1",
        "CAS:208102-40-3",
        "CAS:289657-27-8",
        "CAS:299964-45-7",
        "CAS:67346-49-0",
        "CHEMBL:CHEMBL1363",
        "PUBCHEM.COMPOUND:3083544",
        "RxNorm:695935",
        "RxNorm:668956",
        "UMLS:C1876458",
        "UMLS:C1813289",
        "SNOMED:423347007",
        "SNOMED:427097003",
        "SNOMED:423317005",
        "SNOMED:424662007"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "695935",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "668956",
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