let meta = ../../common/meta.dhall
let enum = meta.enum
let generic_fhir_mapping = meta.generic_fhir_mapping
in {
    name = "Omalizumab",
    identifiers = [
        "SMILES:NA",
        "CAS:242138-07-4",
        "CHEMBL:CHEMBL1201589",
        "RXCUI:2058943",
        "RXCUI:2058949",
        "RXCUI:1657209",
        "UMLSCUI:C1329779",
        "UMLSCUI:C1443685",
        "MESH:D000069444",
        "PUBCHEM:50067183",
        "PUBCHEM:47206967",
        "PUBCHEM:46507002",
        "PUBCHEM:103771317",
        "PUBCHEM:135293034",
        "PUBCHEM:178103472",
        "PUBCHEM:329976992",
        "PUBCHEM:354355054",
        "SCTID:406443008",
        "SCTID:406442003",
        "SCTID:409272008"
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
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    }
}