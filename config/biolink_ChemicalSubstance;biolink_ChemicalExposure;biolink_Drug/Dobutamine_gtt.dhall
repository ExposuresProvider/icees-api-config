let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Dobutamine_gtt",
    identifiers = [
        "CHEBI:4670",
        "CHEBI:4671",
        "PUBCHEM:36811",
        "NCIT:C61733",
        "UMLSCUI:C0012963",
        "NCIT:C171751",
        "NCIT:C28997",
        "UMLSCUI:C0700450",
        "NCIT:C65452",
        "UMLSCUI:C0887392",
        "SCTID:387145002",
        "SCTID:3528911000001100",
        "SCTID:26523005",
        "SCTID:90118002",
        "SCTID:121557002",
        "SCTID:319502004",
        "SCTID:775668005",
        "RxNorm:3616",
        "RxNorm:1812167",
        "RxNorm:203121",
        "RxNorm:374370",
        "RxNorm:328216",
        "RxNorm:328218",
        "RxNorm:328215",
        "RxNorm:345811",
        "LOINC:LP46807-1"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "3616"
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