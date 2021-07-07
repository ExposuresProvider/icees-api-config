let meta = ../../common/meta.dhall
let enum = meta.enum
let generic_fhir_mapping = meta.generic_fhir_mapping
in {
    name = "Arformoterol",
    identifiers = [
        "SMILES:COC1CCC(C[C@@H](C)NC[C@H](O)C2CCC(O)C(NC:O)C2)CC1",
        "CAS:208102-40-3",
        "CAS:289657-27-8",
        "CAS:299964-45-7",
        "CAS:67346-49-0",
        "CHEMBL:CHEMBL1363",
        "PUBCHEM:3083544",
        "RXCUI:695935",
        "RXCUI:668956",
        "UMLSCUI:C1876458",
        "UMLSCUI:C1813289",
        "SCTID:423347007",
        "SCTID:427097003",
        "SCTID:423317005",
        "SCTID:424662007"
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
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    }
}