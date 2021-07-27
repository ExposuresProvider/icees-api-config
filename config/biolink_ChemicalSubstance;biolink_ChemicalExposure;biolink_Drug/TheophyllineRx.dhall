let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "TheophyllineRx",
    identifiers = [
        "SMILES:CN1C(:O)N(C)C2NC[NH]C2C1:O",
        "CAS:58-55-9",
        "CAS:56645-32-0",
        "CAS:75448-53-2",
        "CAS:46157-00-0",
        "MESH:D013806",
        "CHEMBL:CHEMBL589251",
        "CHEMBL:CHEMBL190",
        "CHEMBL:CHEMBL221190",
        "CHEMBL:CHEMBL1200406",
        "PUBCHEM:2153",
        "RXCUI:208266",
        "RXCUI:208278",
        "RXCUI:313277",
        "RXCUI:756226",
        "RXCUI:844590",
        "RXCUI:844591",
        "RXCUI:844813",
        "RXCUI:844829",
        "RXCUI:844831",
        "RXCUI:844832",
        "RXCUI:208262",
        "RXCUI:108870",
        "RXCUI:1115987",
        "RXCUI:1115993",
        "RXCUI:198255",
        "RXCUI:198256",
        "RXCUI:198257",
        "RXCUI:198258",
        "RXCUI:198261",
        "RXCUI:198262",
        "RXCUI:198263",
        "RXCUI:237178",
        "RXCUI:313263",
        "RXCUI:313280",
        "RXCUI:313284",
        "RXCUI:313285",
        "RXCUI:313297",
        "RXCUI:313298",
        "RXCUI:313302",
        "RXCUI:313304",
        "RXCUI:313310",
        "RXCUI:314240",
        "RXCUI:314241",
        "RXCUI:317769",
        "RXCUI:348472",
        "RXCUI:425539",
        "RXCUI:701712",
        "RXCUI:198260",
        "RXCUI:198264",
        "RXCUI:199331",
        "RXCUI:313264",
        "RXCUI:313272",
        "RXCUI:313291",
        "RXCUI:317831",
        "RXCUI:346574",
        "RXCUI:411090",
        "RXCUI:706550",
        "RXCUI:313306",
        "RXCUI:199809",
        "RXCUI:434104",
        "RXCUI:104553",
        "RXCUI:346733",
        "UMLSCUI:C0709767",
        "UMLSCUI:C0709784",
        "UMLSCUI:C0980573",
        "UMLSCUI:C0709725",
        "UMLSCUI:C2682140",
        "UMLSCUI:C2682141",
        "UMLSCUI:C2682359",
        "UMLSCUI:C2682375",
        "UMLSCUI:C2682377",
        "UMLSCUI:C2682378",
        "UMLSCUI:C0709763",
        "UMLSCUI:C0361759",
        "UMLSCUI:C0792754",
        "UMLSCUI:C0792525",
        "UMLSCUI:C0690477",
        "UMLSCUI:C0690479",
        "UMLSCUI:C0690481",
        "UMLSCUI:C0690482",
        "UMLSCUI:C0690489",
        "UMLSCUI:C0690492",
        "UMLSCUI:C0690494",
        "UMLSCUI:C0772554",
        "UMLSCUI:C0980558",
        "UMLSCUI:C0980576",
        "UMLSCUI:C0980580",
        "UMLSCUI:C0980581",
        "UMLSCUI:C0980594",
        "UMLSCUI:C0980595",
        "UMLSCUI:C0980600",
        "UMLSCUI:C0980602",
        "UMLSCUI:C0980610",
        "UMLSCUI:C0981749",
        "UMLSCUI:C0981750",
        "UMLSCUI:C0994337",
        "UMLSCUI:C1163864",
        "UMLSCUI:C1354807",
        "UMLSCUI:C1878493",
        "UMLSCUI:C0690486",
        "UMLSCUI:C0690496",
        "UMLSCUI:C0692756",
        "UMLSCUI:C0980559",
        "UMLSCUI:C0980568",
        "UMLSCUI:C0980588",
        "UMLSCUI:C0994450",
        "UMLSCUI:C1161581",
        "UMLSCUI:C1340346",
        "UMLSCUI:C1948868",
        "UMLSCUI:C0980604",
        "UMLSCUI:C0693467",
        "UMLSCUI:C1363374",
        "UMLSCUI:C0354787",
        "UMLSCUI:C1161776",
        "SCTID:387796005",
        "SCTID:320415003",
        "SCTID:376735006",
        "SCTID:320416002",
        "SCTID:320425008",
        "SCTID:386166002",
        "SCTID:320423001",
        "SCTID:320422006",
        "SCTID:411110007",
        "SCTID:374309005",
        "SCTID:320417006",
        "SCTID:320419009",
        "SCTID:386165003",
        "SCTID:320420003",
        "SCTID:375710006",
        "SCTID:411111006",
        "SCTID:320421004",
        "SCTID:411112004",
        "SCTID:411109002",
        "SCTID:320400004",
        "SCTID:376404004",
        "SCTID:376374002",
        "SCTID:375735000",
        "SCTID:386128000",
        "SCTID:386167006",
        "SCTID:377449006",
        "SCTID:377444001",
        "SCTID:377443007",
        "SCTID:377451005",
        "SCTID:377452003",
        "SCTID:377562007",
        "SCTID:377372009",
        "SCTID:372810006",
        "SCTID:111131008",
        "SCTID:45940009",
        "SCTID:734516006",
        "SCTID:387431001",
        "SCTID:96241008",
        "SCTID:6865007",
        "SCTID:376379007",
        "SCTID:376676009",
        "SCTID:320414004",
        "SCTID:376736007",
        "SCTID:374689000",
        "SCTID:376000003",
        "SCTID:376588002",
        "SCTID:376605007",
        "SCTID:374687003",
        "SCTID:375415002",
        "SCTID:375416001",
        "SCTID:374273008",
        "SCTID:374280005",
        "SCTID:375513006",
        "SCTID:374277009",
        "SCTID:374278004",
        "SCTID:320471001",
        "SCTID:377445000",
        "SCTID:320470000",
        "SCTID:377450006",
        "SCTID:66493003",
        "SCTID:398682007",
        "SCTID:398973004",
        "SCTID:75748004",
        "SCTID:398769007",
        "SCTID:398842002",
        "SCTID:387797001",
        "SCTID:430224000"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "208266",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "208278",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "313277",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "756226",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "844590",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "844591",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "844813",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "844829",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "844831",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "844832",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "208262",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "108870",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1115987",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1115993",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "198255",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "198256",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "198257",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "198258",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "198261",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "198262",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "198263",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "237178",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "313263",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "313280",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "313284",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "313285",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "313297",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "313298",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "313302",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "313304",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "313310",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "314240",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "314241",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "317769",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "348472",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "425539",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "701712",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "198260",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "198264",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "199331",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "313264",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "313272",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "313291",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "317831",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "346574",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "411090",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "706550",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "313306",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "199809",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "434104",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "104553",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "346733",
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