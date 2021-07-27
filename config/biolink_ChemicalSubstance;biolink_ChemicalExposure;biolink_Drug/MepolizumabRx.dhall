let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "MepolizumabRx",
    identifiers = [
        "SMILES:NA",
        "CAS:196078-29-2",
        "CHEMBL:CHEMBL2108429",
        "RXCUI:1720606",
        "RXCUI:1720601",
        "UMLSCUI:C4058351",
        "UMLSCUI:C4058346",
        "MESH:C434107",
        "PUBCHEM:135278932",
        "PUBCHEM:47206675",
        "PUBCHEM:76206305",
        "PUBCHEM:223366020",
        "PUBCHEM:349977836",
        "PUBCHEM:347910353",
        "PUBCHEM:354355057",
        "SCTID:716046009"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1720606",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1720601",
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