let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Ipratropium",
    identifiers = [
        "SMILES:CC(C)[N+]1(C2CCC1CC(C2)OC(:O)C(CO)C3CCCCC3)C.[BR-]",
        "CAS:66985-17-9",
        "MESH:D009241",
        "CHEMBL:CHEMBL1464005",
        "PUBCHEM.COMPOUND:657309",
        "PUBCHEM.COMPOUND:3746",
        "PUBCHEM.COMPOUND:43232",
        "PUBCHEM.COMPOUND:25897919",
        "PUBCHEM.COMPOUND:6604365",
        "RxNorm:836366",
        "RxNorm:836368",
        "RxNorm:1797835",
        "RxNorm:1797845",
        "RxNorm:1190225",
        "RxNorm:1437704",
        "RxNorm:108889",
        "RxNorm:107667",
        "RxNorm:836286",
        "RxNorm:836343",
        "RxNorm:836344",
        "RxNorm:836347",
        "RxNorm:836354",
        "RxNorm:836356",
        "RxNorm:836358",
        "RxNorm:836361",
        "RxNorm:1362214",
        "RxNorm:1797833",
        "RxNorm:1797844",
        "RxNorm:1437702",
        "RxNorm:1190220",
        "RxNorm:1945738",
        "UMLS:C1971016",
        "UMLS:C1639201",
        "UMLS:C1613500",
        "UMLS:C0713820",
        "UMLS:C3245071",
        "UMLS:C1585547",
        "UMLS:C0361785",
        "UMLS:C0360052",
        "UMLS:C1163939",
        "UMLS:C1533036",
        "UMLS:C1995668",
        "UMLS:C0704800",
        "UMLS:C0361081",
        "UMLS:C0704801",
        "UMLS:C0981517",
        "UMLS:C0354769",
        "UMLS:C0791615",
        "UMLS:C1995694",
        "UMLS:C1995842",
        "UMLS:C1164703",
        "UMLS:C3245066",
        "UMLS:C4529300",
        "SCTID:372518007",
        "SCTID:386881005",
        "SCTID:725862005",
        "SCTID:108624006",
        "SCTID:423164002",
        "SCTID:421685007",
        "SCTID:430316007",
        "SCTID:430475000",
        "SCTID:375220000",
        "SCTID:331054006",
        "SCTID:371689004",
        "SCTID:414537003",
        "SCTID:320348004",
        "SCTID:320350007",
        "SCTID:414538008",
        "SCTID:320339009",
        "SCTID:320340006",
        "SCTID:320346000",
        "SCTID:371694004",
        "SCTID:320347009",
        "SCTID:377496003",
        "SCTID:320345001",
        "SCTID:377493006"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836366",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1190225",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1437704",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836286",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1190220",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1362214",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "108889",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1437702",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1945738",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836368",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797835",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797845",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "107667",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836343",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836344",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836347",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836354",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836356",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836358",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "836361",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797833",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797844",
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