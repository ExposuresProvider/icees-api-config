let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Fluticasone",
    identifiers = [
        "SMILES:C[C@@H]1C[C@H]2[C@@H]3C[C@@H](C4:CC(:O)C:C[C@@]4([C@]3([C@H](C[C@@]2([C@]1(C(:O)SCF)O)C)O)F)C)F",
        "CAS:90566-53-3",
        "MESH:D000068298",
        "CHEMBL:CHEMBL1473",
        "PUBCHEM.COMPOUND:5311101",
        "PUBCHEM.COMPOUND:62924",
        "PUBCHEM.COMPOUND:24847768",
        "PUBCHEM.COMPOUND:122130768",
        "PUBCHEM.COMPOUND:134687786",
        "RxNorm:1945044",
        "RxNorm:1945048",
        "RxNorm:1872967",
        "RxNorm:895697",
        "RxNorm:895989",
        "RxNorm:895991",
        "RxNorm:1148646",
        "RxNorm:895996",
        "RxNorm:896001",
        "RxNorm:896006",
        "RxNorm:896019",
        "RxNorm:896023",
        "RxNorm:896027",
        "RxNorm:896031",
        "RxNorm:896165",
        "RxNorm:896185",
        "RxNorm:896190",
        "RxNorm:896212",
        "RxNorm:896222",
        "RxNorm:896229",
        "RxNorm:896235",
        "RxNorm:896237",
        "RxNorm:896243",
        "RxNorm:896245",
        "RxNorm:896271",
        "RxNorm:896273",
        "RxNorm:1797892",
        "RxNorm:1797933",
        "RxNorm:1539891",
        "RxNorm:1539893",
        "RxNorm:1648785",
        "RxNorm:1648789",
        "RxNorm:1547660",
        "RxNorm:1547664",
        "RxNorm:1547668",
        "RxNorm:1547672",
        "RxNorm:2045382",
        "RxNorm:1797919",
        "RxNorm:1797909",
        "RxNorm:1797935",
        "RxNorm:1797849",
        "RxNorm:1941536",
        "RxNorm:1941607",
        "RxNorm:1941613",
        "RxNorm:1946589",
        "RxNorm:1918199",
        "RxNorm:1918205",
        "RxNorm:1918211",
        "RxNorm:1869712",
        "RxNorm:1996212",
        "RxNorm:1148643",
        "RxNorm:1148645",
        "RxNorm:895487",
        "RxNorm:895987",
        "RxNorm:895990",
        "RxNorm:895994",
        "RxNorm:895999",
        "RxNorm:896004",
        "RxNorm:896018",
        "RxNorm:896021",
        "RxNorm:896025",
        "RxNorm:896030",
        "RxNorm:896161",
        "RxNorm:896184",
        "RxNorm:896186",
        "RxNorm:896209",
        "RxNorm:896218",
        "RxNorm:896228",
        "RxNorm:896231",
        "RxNorm:896236",
        "RxNorm:896239",
        "RxNorm:896244",
        "RxNorm:896267",
        "RxNorm:896272",
        "RxNorm:896294",
        "RxNorm:896300",
        "RxNorm:1797847",
        "RxNorm:1797890",
        "RxNorm:1797907",
        "RxNorm:1945039",
        "RxNorm:1945047",
        "RxNorm:1424889",
        "RxNorm:1424899",
        "RxNorm:1547658",
        "RxNorm:1547663",
        "RxNorm:1547666",
        "RxNorm:1547671",
        "RxNorm:1648783",
        "RxNorm:1648788",
        "RxNorm:2045377",
        "RxNorm:1941531",
        "RxNorm:1941605",
        "RxNorm:1941611",
        "RxNorm:1946583",
        "RxNorm:1918194",
        "RxNorm:1918203",
        "RxNorm:1918209",
        "UMLS:C4522960",
        "UMLS:C4522963",
        "UMLS:C4317657",
        "UMLS:C0706576",
        "UMLS:C0305765",
        "UMLS:C1615253",
        "UMLS:C1967995",
        "UMLS:C1966482",
        "UMLS:C1966478",
        "UMLS:C1966481",
        "UMLS:C1966484",
        "UMLS:C0716270",
        "UMLS:C0716271",
        "UMLS:C1967993",
        "UMLS:C2365544",
        "UMLS:C1965900",
        "UMLS:C2365549",
        "UMLS:C1965902",
        "UMLS:C2365556",
        "UMLS:C1965904",
        "UMLS:C2731892",
        "UMLS:C2731893",
        "UMLS:C2731899",
        "UMLS:C2731901",
        "UMLS:C2731918",
        "UMLS:C2731919",
        "UMLS:C1948380",
        "UMLS:C3871670",
        "UMLS:C3644433",
        "UMLS:C3644429",
        "UMLS:C4019671",
        "UMLS:C4019675",
        "UMLS:C3855286",
        "UMLS:C3855290",
        "UMLS:C3855294",
        "UMLS:C3855298",
        "UMLS:C4692143",
        "UMLS:C4238837",
        "UMLS:C4256547",
        "UMLS:C4256546",
        "UMLS:C3464355",
        "UMLS:C4519828",
        "UMLS:C4519849",
        "UMLS:C4306093",
        "UMLS:C4529476",
        "UMLS:C4473486",
        "UMLS:C4473491",
        "UMLS:C4306094",
        "UMLS:C4306086",
        "UMLS:C4542148",
        "UMLS:C1369303",
        "UMLS:C1967996",
        "UMLS:C0590979",
        "UMLS:C0353644",
        "UMLS:C1612888",
        "UMLS:C2731784",
        "UMLS:C2731787",
        "UMLS:C1967858",
        "UMLS:C2731795",
        "UMLS:C2731797",
        "UMLS:C2731800",
        "UMLS:C2731803",
        "UMLS:C2731853",
        "UMLS:C2731864",
        "UMLS:C2731865",
        "UMLS:C1967982",
        "UMLS:C2731881",
        "UMLS:C1967976",
        "UMLS:C2731888",
        "UMLS:C1967679",
        "UMLS:C2731895",
        "UMLS:C2731900",
        "UMLS:C2731914",
        "UMLS:C1724805",
        "UMLS:C0733334",
        "UMLS:C0733332",
        "UMLS:C3464350",
        "UMLS:C1948376",
        "UMLS:C1966837",
        "UMLS:C4522955",
        "UMLS:C4522962",
        "UMLS:C3644424",
        "UMLS:C3644432",
        "UMLS:C3855284",
        "UMLS:C3855289",
        "UMLS:C3855292",
        "UMLS:C3855297",
        "UMLS:C4019669",
        "UMLS:C4019674",
        "UMLS:C4692142",
        "UMLS:C4519823",
        "UMLS:C4519847",
        "UMLS:C4519852",
        "UMLS:C4529470",
        "UMLS:C4306273",
        "UMLS:C4306272",
        "UMLS:C4306271",
        "SCTID:397192001",
        "SCTID:426409006",
        "SCTID:396064000",
        "SCTID:108632003",
        "SCTID:411106009",
        "SCTID:350438003",
        "SCTID:715695003",
        "SCTID:350437008",
        "SCTID:350436004",
        "SCTID:715694004",
        "SCTID:332055005",
        "SCTID:331062003",
        "SCTID:417260001",
        "SCTID:332058007",
        "SCTID:375606003",
        "SCTID:375607007",
        "SCTID:375608002",
        "SCTID:320592003",
        "SCTID:320593008",
        "SCTID:320594002",
        "SCTID:320595001",
        "SCTID:425984002",
        "SCTID:320611002",
        "SCTID:320610001",
        "SCTID:320618008",
        "SCTID:320615006",
        "SCTID:320614005",
        "SCTID:320586009",
        "SCTID:320587000",
        "SCTID:320588005",
        "SCTID:320600005",
        "SCTID:331065001",
        "SCTID:320580003",
        "SCTID:320599007",
        "SCTID:320582006",
        "SCTID:320581004",
        "SCTID:320602002",
        "SCTID:320603007",
        "SCTID:320605000",
        "SCTID:320604001"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1945044",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1945048",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1872967",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "895697",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "895989",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "895991",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1148646",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "895996",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896001",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896006",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896019",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896023",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896027",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896031",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797892",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797933",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1539891",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1539893",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1648785",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1648789",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1547660",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1547664",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1547668",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1547672",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "2045382",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797919",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797909",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797935",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797849",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1941536",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1941607",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1941613",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1946589",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1869712",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1996212",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1148643",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1148645",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "895487",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "895987",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "895990",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "895994",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "895999",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896004",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896018",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896021",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896025",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896030",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896294",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "896300",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797847",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797890",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797907",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1945039",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1945047",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1424889",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1424899",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1547658",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1547663",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1547666",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1547671",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1648783",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1648788",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "2045377",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1941531",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1941605",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1941611",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1946583",
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