let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Omalizumab",
    identifiers = [
        "SMILES:NA",
        "CAS:242138-07-4",
        "CHEMBL:CHEMBL1201589",
        "RxNorm:2058943",
        "RxNorm:2058949",
        "RxNorm:1657209",
        "UMLS:C1329779",
        "UMLS:C1443685",
        "MESH:D000069444",
        "PUBCHEM.COMPOUND:50067183",
        "PUBCHEM.COMPOUND:47206967",
        "PUBCHEM.COMPOUND:46507002",
        "PUBCHEM.COMPOUND:103771317",
        "PUBCHEM.COMPOUND:135293034",
        "PUBCHEM.COMPOUND:178103472",
        "PUBCHEM.COMPOUND:329976992",
        "PUBCHEM.COMPOUND:354355054",
        "SNOMED:406443008",
        "SNOMED:406442003",
        "SNOMED:409272008"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "2058943",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "2058949",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1657209",
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