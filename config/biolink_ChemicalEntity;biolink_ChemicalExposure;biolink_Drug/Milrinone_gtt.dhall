let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Milrinone_gtt",
    identifiers = [
        "CHEBI:50693",
        "CHEBI:34850",
        "PUBCHEM.COMPOUND:138109998",
        "PUBCHEM.COMPOUND:13669855",
        "PUBCHEM.COMPOUND:12960308",
        "PUBCHEM.COMPOUND:12873360",
        "PUBCHEM.COMPOUND:12799331",
        "PUBCHEM.COMPOUND:172293",
        "PUBCHEM.COMPOUND:4197",
        "NCIT:C61848",
        "UMLS:C0128513",
        "NCIT:C29263",
        "UMLS:C0600487",
        "RxNorm:52769",
        "RxNorm:1791839",
        "RxNorm:155120",
        "RxNorm:405198",
        "RxNorm:406097",
        "RxNorm:1164730",
        "RxNorm:377131",
        "RxNorm:576175",
        "RxNorm:329186",
        "RxNorm:345853",
        "RxNorm:702030",
        "RxNorm:362917",
        "RxNorm:545298",
        "RxNorm:1791838",
        "RxNorm:1791853",
        "RxNorm:545297",
        "RxNorm:807269",
        "RxNorm:362967",
        "RxNorm:347930",
        "RxNorm:1791841",
        "RxNorm:1791855",
        "SNOMED:373441005",
        "SNOMED:108481006",
        "SNOMED:293524001",
        "SNOMED:776794001",
        "SNOMED:374513002",
        "SNOMED:374512007",
        "LOINC:LP171621-8",
        "LOINC:LP165031-8",
        "LOINC:LP165032-6",
        "LOINC:LP165033-4"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "52769"
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