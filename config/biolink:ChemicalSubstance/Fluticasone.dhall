let meta = ../../common/meta.dhall
let ICEESAPIType = meta.ICEESAPIType
let Mapping = meta.Mapping
let NearestMapping = meta.NearestMapping
let generic_fhir_mapping = meta.generic_fhir_mapping
let environmental_mapping = meta.environmental_mapping
let avg = meta.avg
let max = meta.max
let prev_date = meta.prev_date
let integer = meta.integer
let range = meta.range
let string = meta.string
let enum = meta.enum
let number = meta.number
let cut = meta.cut
let qcut = meta.qcut
let range_bins = meta.range_bins
let no_binning = meta.no_binning
let nearest_point_distance = meta.nearest_point_distance
let nearest_point_attribute = meta.nearest_point_attribute
let nearest_feature_distance = meta.nearest_feature_distance
let nearest_feature_attribute = meta.nearest_feature_attribute
let no_identifiers = meta.no_identifiers
let no_categories = meta.no_categories
let no_mapping = meta.no_mapping
let geoid_mapping = meta.geoid_mapping
in {
    name = "Fluticasone",
    identifiers = [
        "SMILES:C[C@@H]1C[C@H]2[C@@H]3C[C@@H](C4:CC(:O)C:C[C@@]4([C@]3([C@H](C[C@@]2([C@]1(C(:O)SCF)O)C)O)F)C)F",
        "CAS:90566-53-3",
        "MESH:D000068298",
        "CHEMBL:CHEMBL1473",
        "PUBCHEM:5311101",
        "PUBCHEM:62924",
        "PUBCHEM:24847768",
        "PUBCHEM:122130768",
        "PUBCHEM:134687786",
        "RXCUI:1945044",
        "RXCUI:1945048",
        "RXCUI:1872967",
        "RXCUI:895697",
        "RXCUI:895989",
        "RXCUI:895991",
        "RXCUI:1148646",
        "RXCUI:895996",
        "RXCUI:896001",
        "RXCUI:896006",
        "RXCUI:896019",
        "RXCUI:896023",
        "RXCUI:896027",
        "RXCUI:896031",
        "RXCUI:896165",
        "RXCUI:896185",
        "RXCUI:896190",
        "RXCUI:896212",
        "RXCUI:896222",
        "RXCUI:896229",
        "RXCUI:896235",
        "RXCUI:896237",
        "RXCUI:896243",
        "RXCUI:896245",
        "RXCUI:896271",
        "RXCUI:896273",
        "RXCUI:1797892",
        "RXCUI:1797933",
        "RXCUI:1539891",
        "RXCUI:1539893",
        "RXCUI:1648785",
        "RXCUI:1648789",
        "RXCUI:1547660",
        "RXCUI:1547664",
        "RXCUI:1547668",
        "RXCUI:1547672",
        "RXCUI:2045382",
        "RXCUI:1797919",
        "RXCUI:1797909",
        "RXCUI:1797935",
        "RXCUI:1797849",
        "RXCUI:1941536",
        "RXCUI:1941607",
        "RXCUI:1941613",
        "RXCUI:1946589",
        "RXCUI:1918199",
        "RXCUI:1918205",
        "RXCUI:1918211",
        "RXCUI:1869712",
        "RXCUI:1996212",
        "RXCUI:1148643",
        "RXCUI:1148645",
        "RXCUI:895487",
        "RXCUI:895987",
        "RXCUI:895990",
        "RXCUI:895994",
        "RXCUI:895999",
        "RXCUI:896004",
        "RXCUI:896018",
        "RXCUI:896021",
        "RXCUI:896025",
        "RXCUI:896030",
        "RXCUI:896161",
        "RXCUI:896184",
        "RXCUI:896186",
        "RXCUI:896209",
        "RXCUI:896218",
        "RXCUI:896228",
        "RXCUI:896231",
        "RXCUI:896236",
        "RXCUI:896239",
        "RXCUI:896244",
        "RXCUI:896267",
        "RXCUI:896272",
        "RXCUI:896294",
        "RXCUI:896300",
        "RXCUI:1797847",
        "RXCUI:1797890",
        "RXCUI:1797907",
        "RXCUI:1945039",
        "RXCUI:1945047",
        "RXCUI:1424889",
        "RXCUI:1424899",
        "RXCUI:1547658",
        "RXCUI:1547663",
        "RXCUI:1547666",
        "RXCUI:1547671",
        "RXCUI:1648783",
        "RXCUI:1648788",
        "RXCUI:2045377",
        "RXCUI:1941531",
        "RXCUI:1941605",
        "RXCUI:1941611",
        "RXCUI:1946583",
        "RXCUI:1918194",
        "RXCUI:1918203",
        "RXCUI:1918209",
        "UMLSCUI:C4522960",
        "UMLSCUI:C4522963",
        "UMLSCUI:C4317657",
        "UMLSCUI:C0706576",
        "UMLSCUI:C0305765",
        "UMLSCUI:C1615253",
        "UMLSCUI:C1967995",
        "UMLSCUI:C1966482",
        "UMLSCUI:C1966478",
        "UMLSCUI:C1966481",
        "UMLSCUI:C1966484",
        "UMLSCUI:C0716270",
        "UMLSCUI:C0716271",
        "UMLSCUI:C1967993",
        "UMLSCUI:C2365544",
        "UMLSCUI:C1965900",
        "UMLSCUI:C2365549",
        "UMLSCUI:C1965902",
        "UMLSCUI:C2365556",
        "UMLSCUI:C1965904",
        "UMLSCUI:C2731892",
        "UMLSCUI:C2731893",
        "UMLSCUI:C2731899",
        "UMLSCUI:C2731901",
        "UMLSCUI:C2731918",
        "UMLSCUI:C2731919",
        "UMLSCUI:C1948380",
        "UMLSCUI:C3871670",
        "UMLSCUI:C3644433",
        "UMLSCUI:C3644429",
        "UMLSCUI:C4019671",
        "UMLSCUI:C4019675",
        "UMLSCUI:C3855286",
        "UMLSCUI:C3855290",
        "UMLSCUI:C3855294",
        "UMLSCUI:C3855298",
        "UMLSCUI:C4692143",
        "UMLSCUI:C4238837",
        "UMLSCUI:C4256547",
        "UMLSCUI:C4256546",
        "UMLSCUI:C3464355",
        "UMLSCUI:C4519828",
        "UMLSCUI:C4519849",
        "UMLSCUI:C4306093",
        "UMLSCUI:C4529476",
        "UMLSCUI:C4473486",
        "UMLSCUI:C4473491",
        "UMLSCUI:C4306094",
        "UMLSCUI:C4306086",
        "UMLSCUI:C4542148",
        "UMLSCUI:C1369303",
        "UMLSCUI:C1967996",
        "UMLSCUI:C0590979",
        "UMLSCUI:C0353644",
        "UMLSCUI:C1612888",
        "UMLSCUI:C2731784",
        "UMLSCUI:C2731787",
        "UMLSCUI:C1967858",
        "UMLSCUI:C2731795",
        "UMLSCUI:C2731797",
        "UMLSCUI:C2731800",
        "UMLSCUI:C2731803",
        "UMLSCUI:C2731853",
        "UMLSCUI:C2731864",
        "UMLSCUI:C2731865",
        "UMLSCUI:C1967982",
        "UMLSCUI:C2731881",
        "UMLSCUI:C1967976",
        "UMLSCUI:C2731888",
        "UMLSCUI:C1967679",
        "UMLSCUI:C2731895",
        "UMLSCUI:C2731900",
        "UMLSCUI:C2731914",
        "UMLSCUI:C1724805",
        "UMLSCUI:C0733334",
        "UMLSCUI:C0733332",
        "UMLSCUI:C3464350",
        "UMLSCUI:C1948376",
        "UMLSCUI:C1966837",
        "UMLSCUI:C4522955",
        "UMLSCUI:C4522962",
        "UMLSCUI:C3644424",
        "UMLSCUI:C3644432",
        "UMLSCUI:C3855284",
        "UMLSCUI:C3855289",
        "UMLSCUI:C3855292",
        "UMLSCUI:C3855297",
        "UMLSCUI:C4019669",
        "UMLSCUI:C4019674",
        "UMLSCUI:C4692142",
        "UMLSCUI:C4519823",
        "UMLSCUI:C4519847",
        "UMLSCUI:C4519852",
        "UMLSCUI:C4529470",
        "UMLSCUI:C4306273",
        "UMLSCUI:C4306272",
        "UMLSCUI:C4306271",
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
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    }
}