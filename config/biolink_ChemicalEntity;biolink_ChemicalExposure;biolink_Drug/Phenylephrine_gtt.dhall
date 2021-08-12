let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Phenylephrine_gtt",
    identifiers = [
        "PUBCHEM.COMPOUND:6102",
        "CHEBI:8093",
        "CHEBI:134779",
        "CHEBI:91518",
        "CHEBI:132294",
        "CHEBI:8094",
        "NCIT:C62067",
        "UMLS:C0031469",
        "NCIT:C91075",
        "UMLS:C1703892",
        "NCIT:C29363",
        "UMLS:C0031470",
        "NCIT:C66378",
        "UMLS:C0304428",
        "NCIT:C29362",
        "UMLS:C1445789",
        "SCTID:372771005",
        "SCTID:54765002",
        "SCTID:105297002",
        "SCTID:19807811000001104",
        "SCTID:14797011000001106",
        "SCTID:24408211000001106",
        "SCTID:8528911000001104",
        "SCTID:13859511000001102",
        "LOINC:LP16252-6",
        "LOINC:LP392396-0",
        "RxNorm:8163",
        "RxNorm:1666371",
        "RxNorm:1158152",
        "RxNorm:543153",
        "RxNorm:707395",
        "RxNorm:328833",
        "RxNorm:809130",
        "RxNorm:316508",
        "RxNorm:331191",
        "RxNorm:373368",
        "RxNorm:373369"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "8163"
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