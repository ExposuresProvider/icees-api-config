let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Levosimendan_gtt",
    identifiers = [
        "CHEBI:50567",
        "PUBCHEM.COMPOUND:3033825",
        "PUBCHEM.COMPOUND:161928",
        "NCIT:C174653",
        "RxNorm:73107",
        "RxNorm:901046",
        "RxNorm:1164037",
        "RxNorm:901045",
        "RxNorm:901047",
        "SNOMED:442795003",
        "SNOMED:442790008",
        "SNOMED:776525007",
        "SNOMED:30137411000001102",
        "SNOMED:786238006",
        "SNOMED:442874003"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "73107"
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