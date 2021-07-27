let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "FeverDx",
    identifiers = [
        "MONDO:0015137",
        "MONDO:0005324",
        "MONDO:0024973",
        "MONDO:0005825",
        "MONDO:0011786",
        "MONDO:0025412",
        "MONDO:0001246",
        "MONDO:0005683",
        "MONDO:0018661",
        "MONDO:0024472",
        "MONDO:0025087",
        "MONDO:0041536",
        "MONDO:0005737",
        "MONDO:0015254",
        "MONDO:0018984",
        "MONDO:0019186",
        "MONDO:0019359",
        "MONDO:0020499",
        "MONDO:0020501",
        "MONDO:0005502",
        "MONDO:0005706",
        "MONDO:0005991",
        "MONDO:0017881",
        "MONDO:0018077",
        "MONDO:0019365",
        "MONDO:0043653",
        "MONDO:0001195",
        "MONDO:0005619",
        "MONDO:0005913",
        "MONDO:0044344",
        "MONDO:0000332",
        "MONDO:0005708",
        "MONDO:0006941",
        "MONDO:0008412",
        "MONDO:0005810",
        "MONDO:0018093",
        "MONDO:0019376",
        "MONDO:0020533",
        "MONDO:0000331",
        "MONDO:0005670",
        "MONDO:0018081",
        "MONDO:0020532",
        "MONDO:0024971",
        "MONDO:0005692",
        "MONDO:0006688",
        "MONDO:0007011",
        "MONDO:0017941",
        "MONDO:0019095",
        "MONDO:0020502",
        "MONDO:0018626",
        "MONDO:0025377",
        "MONDO:0000330",
        "MONDO:0000230",
        "MONDO:0017767",
        "MONDO:0019362",
        "MONDO:0000233",
        "MONDO:0001154",
        "MONDO:0005820",
        "MONDO:0005920",
        "MONDO:0006005",
        "MONDO:0017874",
        "MONDO:0017877",
        "MONDO:0000283",
        "MONDO:0000346",
        "MONDO:0007727",
        "MONDO:0025096",
        "MONDO:0005358",
        "MONDO:0009849",
        "MONDO:0017872",
        "MONDO:0017875",
        "MONDO:0005784",
        "MONDO:0005911",
        "MONDO:0001621",
        "MONDO:0017876",
        "MONDO:0001620",
        "MONDO:0005651",
        "MONDO:0009572",
        "MONDO:0000227",
        "MONDO:0019360",
        "MONDO:0009995",
        "MONDO:0013713",
        "MONDO:0004582",
        "MONDO:0001118",
        "MONDO:0017953",
        "MONDO:0009225",
        "MONDO:0044660",
        "MONDO:0018540",
        "MONDO:0001944",
        "MONDO:0013850",
        "MONDO:0000231",
        "MONDO:0021777",
        "MONDO:0007601",
        "MONDO:0012663",
        "MONDO:0012481",
        "MONDO:0000310",
        "MONDO:0012724",
        "MONDO:0009842",
        "MONDO:0015584",
        "MONDO:0018702",
        "MONDO:0014487",
        "NCIT:C3038",
        "NCIT:C0015967",
        "NCIT:C143485",
        "NCIT:C35547",
        "UMLSCUI:C0043395",
        "NCIT:C34984",
        "UMLSCUI:C0035436",
        "NCIT:C34528",
        "UMLSCUI:C0011311",
        "NCIT:C35089",
        "UMLSCUI:C0041466",
        "NCIT:C97156",
        "UMLSCUI:C0724724",
        "NCIT:C146313",
        "NCIT:C145858",
        "NCIT:C154941",
        "NCIT:C144104",
        "NCIT:C144665",
        "NCIT:C128335",
        "UMLSCUI:C0343528",
        "NCIT:C128418",
        "UMLSCUI:C0023092",
        "NCIT:C145285",
        "LOINC:LP37005-3",
        "LOINC:LP17143-6",
        "LOINC:LP19884-3",
        "LOINC:LP39604-1",
        "LOINC:LP37003-8",
        "LOINC:LP37764-5",
        "LOINC:LP39614-0",
        "LOINC:LP14235-3",
        "LOINC:LP19936-1",
        "LOINC:LP37700-9",
        "LOINC:LP37004-6",
        "LOINC:LP40192-4",
        "LOINC:LP19869-4",
        "LOINC:LP39602-5",
        "LOINC:LP39603-3",
        "LOINC:LP40194-0",
        "LOINC:LP39613-2",
        "LOINC:LP18316-7",
        "LOINC:LP74849-8",
        "LOINC:LP19891-8",
        "MESH:D000071243",
        "MESH:D000085142",
        "MESH:D000073605",
        "MESH:D000170",
        "MESH:D003047",
        "MESH:D003715",
        "MESH:D005335",
        "MESH:D006480",
        "MESH:D006691",
        "MESH:D010217",
        "MESH:D012213",
        "MESH:D012847",
        "MESH:D013801",
        "MESH:D006979",
        "MESH:D007877",
        "MESH:D012541",
        "MESH:D014438",
        "MESH:D001907",
        "MESH:D006255",
        "MESH:D006479",
        "MESH:D006482",
        "MESH:D012061",
        "MESH:D014205",
        "MESH:D001474",
        "MESH:D002372",
        "MESH:D005334",
        "MESH:D011778",
        "MESH:D012373",
        "MESH:D012552",
        "MESH:D014608",
        "MESH:D000258",
        "MESH:D002006",
        "MESH:D003294",
        "MESH:D007244",
        "MESH:D007835",
        "MESH:D007922",
        "MESH:D008379",
        "MESH:D012295",
        "MESH:D014435",
        "MESH:D015004",
        "MESH:D015012",
        "MESH:D019142",
        "MESH:D001742",
        "MESH:D004810",
        "MESH:D007898",
        "MESH:D008288",
        "MESH:D012612",
        "MESH:D014901",
        "MESH:D019595",
        "MESH:D054078",
        "MESH:C531641",
        "MESH:D002044",
        "MESH:D003699",
        "MESH:D006478",
        "MESH:D006481",
        "MESH:D056660",
        "MESH:C531728",
        "MESH:C536657",
        "MESH:C537582",
        "MESH:D000357",
        "MESH:D003121",
        "MESH:D006560",
        "MESH:D010284",
        "MESH:D010505",
        "MESH:D011906",
        "MESH:D022341",
        "MESH:D054541",
        "MESH:D065632",
        "SCITD:386661006",
        "SCITD:248449003",
        "SCITD:186694006",
        "SCITD:30242009",
        "SCITD:4834000",
        "SCITD:12579009",
        "SCITD:71085009",
        "SCITD:85904008",
        "SCITD:76623002",
        "SCITD:82214002",
        "SCITD:51254007",
        "SCITD:58718002",
        "SCITD:68981009",
        "SCITD:73730005",
        "SCITD:74166005",
        "SCITD:19044004",
        "SCITD:111950007",
        "SCITD:102496004",
        "SCITD:111864006",
        "SCITD:21013006",
        "SCITD:197342009",
        "SCITD:199177009",
        "SCITD:200951007",
        "SCITD:17658005",
        "SCITD:19065005",
        "UMLS:C0424755",
        "NCIT:C50589",
        "UMLS:C0343607",
        "UMLS:C0002797",
        "UMLS:C0276392",
        "UMLS:C0155888",
        "UMLS:C0276378",
        "UMLS:C0276366",
        "UMLS:C0276849",
        "UMLS:C1320835",
        "PUBCHEM.COMPOUND:194700",
        "UMLS:C0264471",
        "UMLS:C0276377",
        "UMLS:C0276284",
        "UMLS:C0338407",
        "UMLS:C0276383",
        "UMLS:C0343600",
        "UMLS:C0553719",
        "UMLS:C0343613",
        "UMLS:C0264453",
        "UMLS:C0276298",
        "UMLS:C0238276",
        "UMLS:C0276414",
        "UMLS:C0437720",
        "UMLS:C1277295",
        "UMLS:C1655732",
        "UMLS:C0276402",
        "UMLS:C0276391",
        "UMLS:C0264456",
        "UMLS:C0347849",
        "UMLS:C0343621",
        "UMLS:C4523892",
        "UMLS:C0153257",
        "UMLS:C3840167",
        "UMLS:C0343609",
        "UMLS:C0276283",
        "UMLS:C0276401",
        "UMLS:C0276413",
        "UMLS:C0343624",
        "UMLS:C0276398",
        "UMLS:C0276297",
        "UMLS:C0276385",
        "UMLS:C0276376",
        "UMLS:C0276397",
        "UMLS:C0276381",
        "UMLS:C0276403",
        "UMLS:C0343616",
        "UMLS:C0277800",
        "UMLS:C0221101",
        "UMLS:C0343632",
        "UMLS:C0042586",
        "UMLS:C0037169",
        "UMLS:C0343629",
        "UMLS:C0276285",
        "UMLS:C0276416",
        "UMLS:C1274338",
        "UMLS:C0343604",
        "UMLS:C0343619",
        "UMLS:C0276393",
        "UMLS:C0038992",
        "UMLS:C0455413",
        "UMLS:C0235839",
        "UMLS:C0424758",
        "UMLS:C0424773",
        "UMLS:C1277294",
        "UMLS:C0231271",
        "UMLS:C0424785",
        "UMLS:C0424775",
        "UMLS:C0424768",
        "UMLS:C0276396",
        "UMLS:C0343608",
        "UMLS:C0276290",
        "UMLS:C1260912",
        "UMLS:C0276404",
        "UMLS:C0157178",
        "UMLS:C0282192",
        "UMLS:C0276387",
        "UMLS:C0276399",
        "UMLS:C0276459",
        "UMLS:C0424776",
        "UMLS:C0424759",
        "UMLS:C0687681",
        "UMLS:C2748661",
        "UMLS:C0455541",
        "UMLS:C0424766",
        "UMLS:C0424777",
        "UMLS:C0157536",
        "NCIT:C92828",
        "UMLS:C0264454",
        "UMLS:C0343760",
        "UMLS:C0276633",
        "UMLS:C0276293",
        "UMLS:C0343618",
        "UMLS:C1306220",
        "UMLS:C0276418",
        "UMLS:C0276292",
        "UMLS:C0343622",
        "UMLS:C0340354",
        "UMLS:C0343603",
        "UMLS:C0424771",
        "UMLS:C2930828",
        "UMLS:C0424782",
        "UMLS:C0424783",
        "UMLS:C0424767",
        "UMLS:C0239575",
        "UMLS:C0424765",
        "NBO:0000678"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm*",
            code = "R50*"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    },
    binning_strategy = max_cutoff 2
}