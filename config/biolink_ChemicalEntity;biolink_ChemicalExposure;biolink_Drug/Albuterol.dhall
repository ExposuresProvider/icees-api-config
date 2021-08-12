let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Albuterol",
    identifiers = [
        "SMILES:CC(C)(C)NCC(O)C1CCC(O)C(CO)C1",
        "CAS:18559-94-9",
        "CAS:35763-26-9",
        "MESH:D000420",
        "CHEMBL:CHEMBL1002",
        "CHEMBL:CHEMBL714",
        "PUBCHEM.COMPOUND:2083",
        "RxNorm:836366",
        "RxNorm:1190225",
        "RxNorm:746763",
        "RxNorm:1437704",
        "RxNorm:352051",
        "RxNorm:901483",
        "RxNorm:901484",
        "RxNorm:745752",
        "RxNorm:1649961",
        "RxNorm:801095",
        "RxNorm:859088",
        "RxNorm:197318",
        "RxNorm:359144",
        "RxNorm:197316",
        "RxNorm:745679",
        "RxNorm:801092",
        "RxNorm:836286",
        "RxNorm:1649560",
        "RxNorm:755497",
        "RxNorm:247044",
        "RxNorm:1190220",
        "RxNorm:252298",
        "RxNorm:245314",
        "RxNorm:359145",
        "RxNorm:392321",
        "RxNorm:1362214",
        "RxNorm:104514",
        "RxNorm:247840",
        "RxNorm:307779",
        "RxNorm:351137",
        "RxNorm:630208",
        "RxNorm:108889",
        "RxNorm:351136",
        "RxNorm:1437702",
        "RxNorm:1945738",
        "UMLS:C1971016",
        "UMLS:C3245071",
        "UMLS:C1951493",
        "UMLS:C1585547",
        "UMLS:C1169664",
        "UMLS:C2741573",
        "UMLS:C2741574",
        "UMLS:C1737294",
        "UMLS:C4018762",
        "UMLS:C2345814",
        "UMLS:C0697412",
        "UMLS:C0687804",
        "UMLS:C1177305",
        "UMLS:C0687801",
        "UMLS:C1967434",
        "UMLS:C2345811",
        "UMLS:C1163939",
        "UMLS:C4020010",
        "UMLS:C0687802",
        "UMLS:C0787965",
        "UMLS:C3245066",
        "UMLS:C0794471",
        "UMLS:C0785994",
        "UMLS:C1177306",
        "UMLS:C1300039",
        "UMLS:C0791615",
        "UMLS:C0354696",
        "UMLS:C0789036",
        "UMLS:C0973882",
        "UMLS:C1168689",
        "UMLS:C1696556",
        "UMLS:C0361785",
        "UMLS:C1168688",
        "UMLS:C1164703",
        "UMLS:C4529300",
        "SCTID:372897005",
        "SCTID:48474002",
        "SCTID:320104002",
        "SCTID:320106000",
        "SCTID:374289006",
        "SCTID:91143003",
        "SCTID:421685007",
        "SCTID:424916002",
        "SCTID:346679009",
        "SCTID:135639005",
        "SCTID:135640007",
        "SCTID:376560008",
        "SCTID:320108004",
        "SCTID:320096005",
        "SCTID:320107009",
        "SCTID:376561007",
        "SCTID:320099003",
        "SCTID:320100006",
        "SCTID:376928006",
        "SCTID:320116008",
        "SCTID:135641006",
        "SCTID:320176004",
        "SCTID:375818005",
        "SCTID:375336001",
        "SCTID:375337005",
        "SCTID:320171009",
        "SCTID:320117004",
        "SCTID:413472005",
        "SCTID:320118009",
        "SCTID:320119001",
        "SCTID:320177008",
        "SCTID:320180009",
        "SCTID:320139002",
        "SCTID:320179006",
        "SCTID:320178003",
        "SCTID:320134007",
        "SCTID:320135008",
        "SCTID:320132006",
        "SCTID:320133001",
        "SCTID:320136009",
        "SCTID:320148007",
        "SCTID:377493006",
        "SCTID:320141001",
        "SCTID:377496003",
        "SCTID:320151000"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "746763",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "352051",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "901483",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "901484",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "745752",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1649961",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "801095",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "859088",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "197318",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "359144",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "197316",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "745679",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "801092",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1649560",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "755497",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "247044",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "252298",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "245314",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "359145",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "392321",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "104514",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "247840",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "307779",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "351137",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "630208",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "351136",
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