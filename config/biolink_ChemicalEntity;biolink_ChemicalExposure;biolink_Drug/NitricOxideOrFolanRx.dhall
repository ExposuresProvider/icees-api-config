let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let generic_fhir_mapping = meta.generic_fhir_mapping
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "NitricOxideOrFolanRx",
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
    binning_strategy = max_cutoff 2,
    identifiers = [
        "NCIT:C47514",
        "UMLS:C0354594",
        "CHEBI:15552",
        "RxNorm:114221",
        "RxNorm:1169774",
        "RxNorm:362748",
        "RxNorm:211199",
        "RxNorm:211200",
        "RxNorm:1789861",
        "RxNorm:1789860",
        "RxNorm:1789872",
        "RxNorm:544927",
        "RxNorm:544926",
        "RxNorm:544929",
        "RxNorm:571655",
        "RxNorm:571656",
        "RxNorm:544928",
        "RxNorm:544930",
        "SNOMED:9454801000001106",
        "SNOMED:4627711000001106",
        "SNOMED:33592511000001102",
        "SNOMED:4627411000001100",
        "SNOMED:33593311000001103",
        "SNOMED:4627811000001103",
        "SNOMED:33592611000001103",
        "SNOMED:4627511000001101",
        "SNOMED:33593511000001109",
        "PUBCHEM.COMPOUND:53394235",
        "PUBCHEM.COMPOUND:23695838",
        "PUBCHEM.COMPOUND:6364626",
        "PUBCHEM.COMPOUND:5282411"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "7442"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "114221"
        }
    ]
}