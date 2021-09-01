let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Theophylline",
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
        "PUBCHEM.COMPOUND:2153",
        "RxNorm:208266",
        "RxNorm:208278",
        "RxNorm:313277",
        "RxNorm:756226",
        "RxNorm:844590",
        "RxNorm:844591",
        "RxNorm:844813",
        "RxNorm:844829",
        "RxNorm:844831",
        "RxNorm:844832",
        "RxNorm:208262",
        "RxNorm:108870",
        "RxNorm:1115987",
        "RxNorm:1115993",
        "RxNorm:198255",
        "RxNorm:198256",
        "RxNorm:198257",
        "RxNorm:198258",
        "RxNorm:198261",
        "RxNorm:198262",
        "RxNorm:198263",
        "RxNorm:237178",
        "RxNorm:313263",
        "RxNorm:313280",
        "RxNorm:313284",
        "RxNorm:313285",
        "RxNorm:313297",
        "RxNorm:313298",
        "RxNorm:313302",
        "RxNorm:313304",
        "RxNorm:313310",
        "RxNorm:314240",
        "RxNorm:314241",
        "RxNorm:317769",
        "RxNorm:348472",
        "RxNorm:425539",
        "RxNorm:701712",
        "RxNorm:198260",
        "RxNorm:198264",
        "RxNorm:199331",
        "RxNorm:313264",
        "RxNorm:313272",
        "RxNorm:313291",
        "RxNorm:317831",
        "RxNorm:346574",
        "RxNorm:411090",
        "RxNorm:706550",
        "RxNorm:313306",
        "RxNorm:199809",
        "RxNorm:434104",
        "RxNorm:104553",
        "RxNorm:346733",
        "UMLS:C0709767",
        "UMLS:C0709784",
        "UMLS:C0980573",
        "UMLS:C0709725",
        "UMLS:C2682140",
        "UMLS:C2682141",
        "UMLS:C2682359",
        "UMLS:C2682375",
        "UMLS:C2682377",
        "UMLS:C2682378",
        "UMLS:C0709763",
        "UMLS:C0361759",
        "UMLS:C0792754",
        "UMLS:C0792525",
        "UMLS:C0690477",
        "UMLS:C0690479",
        "UMLS:C0690481",
        "UMLS:C0690482",
        "UMLS:C0690489",
        "UMLS:C0690492",
        "UMLS:C0690494",
        "UMLS:C0772554",
        "UMLS:C0980558",
        "UMLS:C0980576",
        "UMLS:C0980580",
        "UMLS:C0980581",
        "UMLS:C0980594",
        "UMLS:C0980595",
        "UMLS:C0980600",
        "UMLS:C0980602",
        "UMLS:C0980610",
        "UMLS:C0981749",
        "UMLS:C0981750",
        "UMLS:C0994337",
        "UMLS:C1163864",
        "UMLS:C1354807",
        "UMLS:C1878493",
        "UMLS:C0690486",
        "UMLS:C0690496",
        "UMLS:C0692756",
        "UMLS:C0980559",
        "UMLS:C0980568",
        "UMLS:C0980588",
        "UMLS:C0994450",
        "UMLS:C1161581",
        "UMLS:C1340346",
        "UMLS:C1948868",
        "UMLS:C0980604",
        "UMLS:C0693467",
        "UMLS:C1363374",
        "UMLS:C0354787",
        "UMLS:C1161776",
        "SNOMED:387796005",
        "SNOMED:320415003",
        "SNOMED:376735006",
        "SNOMED:320416002",
        "SNOMED:320425008",
        "SNOMED:386166002",
        "SNOMED:320423001",
        "SNOMED:320422006",
        "SNOMED:411110007",
        "SNOMED:374309005",
        "SNOMED:320417006",
        "SNOMED:320419009",
        "SNOMED:386165003",
        "SNOMED:320420003",
        "SNOMED:375710006",
        "SNOMED:411111006",
        "SNOMED:320421004",
        "SNOMED:411112004",
        "SNOMED:411109002",
        "SNOMED:320400004",
        "SNOMED:376404004",
        "SNOMED:376374002",
        "SNOMED:375735000",
        "SNOMED:386128000",
        "SNOMED:386167006",
        "SNOMED:377449006",
        "SNOMED:377444001",
        "SNOMED:377443007",
        "SNOMED:377451005",
        "SNOMED:377452003",
        "SNOMED:377562007",
        "SNOMED:377372009",
        "SNOMED:372810006",
        "SNOMED:111131008",
        "SNOMED:45940009",
        "SNOMED:734516006",
        "SNOMED:387431001",
        "SNOMED:96241008",
        "SNOMED:6865007",
        "SNOMED:376379007",
        "SNOMED:376676009",
        "SNOMED:320414004",
        "SNOMED:376736007",
        "SNOMED:374689000",
        "SNOMED:376000003",
        "SNOMED:376588002",
        "SNOMED:376605007",
        "SNOMED:374687003",
        "SNOMED:375415002",
        "SNOMED:375416001",
        "SNOMED:374273008",
        "SNOMED:374280005",
        "SNOMED:375513006",
        "SNOMED:374277009",
        "SNOMED:374278004",
        "SNOMED:320471001",
        "SNOMED:377445000",
        "SNOMED:320470000",
        "SNOMED:377450006",
        "SNOMED:66493003",
        "SNOMED:398682007",
        "SNOMED:398973004",
        "SNOMED:75748004",
        "SNOMED:398769007",
        "SNOMED:398842002",
        "SNOMED:387797001",
        "SNOMED:430224000"
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
            "biolink:ChemicalEntity",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    },
    binning_strategy = max_cutoff 2
}