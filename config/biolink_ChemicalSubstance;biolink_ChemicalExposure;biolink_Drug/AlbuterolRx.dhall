let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "AlbuterolRx",
    identifiers = [
        "SMILES:CC(C)(C)NCC(O)C1CCC(O)C(CO)C1",
        "CAS:18559-94-9",
        "CAS:35763-26-9",
        "MESH:D000420",
        "CHEMBL:CHEMBL1002",
        "CHEMBL:CHEMBL714",
        "PUBCHEM:2083",
        "RXCUI:836366",
        "RXCUI:1190225",
        "RXCUI:746763",
        "RXCUI:1437704",
        "RXCUI:352051",
        "RXCUI:901483",
        "RXCUI:901484",
        "RXCUI:745752",
        "RXCUI:1649961",
        "RXCUI:801095",
        "RXCUI:859088",
        "RXCUI:197318",
        "RXCUI:359144",
        "RXCUI:197316",
        "RXCUI:745679",
        "RXCUI:801092",
        "RXCUI:836286",
        "RXCUI:1649560",
        "RXCUI:755497",
        "RXCUI:247044",
        "RXCUI:1190220",
        "RXCUI:252298",
        "RXCUI:245314",
        "RXCUI:359145",
        "RXCUI:392321",
        "RXCUI:1362214",
        "RXCUI:104514",
        "RXCUI:247840",
        "RXCUI:307779",
        "RXCUI:351137",
        "RXCUI:630208",
        "RXCUI:108889",
        "RXCUI:351136",
        "RXCUI:1437702",
        "RXCUI:1945738",
        "UMLSCUI:C1971016",
        "UMLSCUI:C3245071",
        "UMLSCUI:C1951493",
        "UMLSCUI:C1585547",
        "UMLSCUI:C1169664",
        "UMLSCUI:C2741573",
        "UMLSCUI:C2741574",
        "UMLSCUI:C1737294",
        "UMLSCUI:C4018762",
        "UMLSCUI:C2345814",
        "UMLSCUI:C0697412",
        "UMLSCUI:C0687804",
        "UMLSCUI:C1177305",
        "UMLSCUI:C0687801",
        "UMLSCUI:C1967434",
        "UMLSCUI:C2345811",
        "UMLSCUI:C1163939",
        "UMLSCUI:C4020010",
        "UMLSCUI:C0687802",
        "UMLSCUI:C0787965",
        "UMLSCUI:C3245066",
        "UMLSCUI:C0794471",
        "UMLSCUI:C0785994",
        "UMLSCUI:C1177306",
        "UMLSCUI:C1300039",
        "UMLSCUI:C0791615",
        "UMLSCUI:C0354696",
        "UMLSCUI:C0789036",
        "UMLSCUI:C0973882",
        "UMLSCUI:C1168689",
        "UMLSCUI:C1696556",
        "UMLSCUI:C0361785",
        "UMLSCUI:C1168688",
        "UMLSCUI:C1164703",
        "UMLSCUI:C4529300",
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
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    },
    binning_strategy = max_cutoff 2
}