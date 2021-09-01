let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ImmunodulationDexamethaone",
    identifiers = [
        "LOINC:77665-8",
        "LOINC:46948-6",
        "LOINC:14062-4",
        "LOINC:56712-3",
        "RxNorm:251647",
        "RxNorm:1943550",
        "RxNorm:1943549",
        "RxNorm:1943551",
        "RxNorm:1945071",
        "RxNorm:1945072",
        "RxNorm:244267",
        "RxNorm:244268",
        "RxNorm:244398",
        "RxNorm:249426",
        "RxNorm:262191",
        "RxNorm:351492",
        "RxNorm:351493",
        "RxNorm:313943",
        "RxNorm:313947",
        "RxNorm:1998481",
        "RxNorm:1998482",
        "RxNorm:246726",
        "RxNorm:251223",
        "RxNorm:246752",
        "RxNorm:249546",
        "RxNorm:2378841",
        "RxNorm:251598",
        "RxNorm:251978",
        "RxNorm:249731",
        "RxNorm:252621",
        "RxNorm:251976",
        "RxNorm:248913",
        "RxNorm:249439",
        "RxNorm:251199",
        "RxNorm:755548",
        "RxNorm:2108015",
        "RxNorm:2108017",
        "RxNorm:2108018",
        "RxNorm:2108020",
        "RxNorm:2108345",
        "RxNorm:2108348",
        "RxNorm:2118829",
        "RxNorm:2118835",
        "RxNorm:2045403",
        "RxNorm:2045406",
        "RxNorm:2045407",
        "RxNorm:2045410",
        "RxNorm:2045411",
        "RxNorm:2045404",
        "RxNorm:2045409",
        "RxNorm:2121587",
        "RxNorm:2121735",
        "RxNorm:3264",
        "RxNorm:197576",
        "RxNorm:197577",
        "RxNorm:197579",
        "RxNorm:197581",
        "RxNorm:197582",
        "RxNorm:197583",
        "RxNorm:197584",
        "RxNorm:226343",
        "RxNorm:242882",
        "RxNorm:244295",
        "RxNorm:244488",
        "RxNorm:247293",
        "RxNorm:247484",
        "RxNorm:248175",
        "RxNorm:315773",
        "RxNorm:315774",
        "RxNorm:315775",
        "RxNorm:315776",
        "RxNorm:315777",
        "RxNorm:315778",
        "RxNorm:315779",
        "RxNorm:317346",
        "RxNorm:317629",
        "RxNorm:323884",
        "RxNorm:328266",
        "RxNorm:328743",
        "RxNorm:328765",
        "RxNorm:329678",
        "RxNorm:329679",
        "RxNorm:331791",
        "RxNorm:332982",
        "RxNorm:332983",
        "RxNorm:332984",
        "RxNorm:332985",
        "RxNorm:333672",
        "RxNorm:333673",
        "RxNorm:335274",
        "RxNorm:335766",
        "RxNorm:339981",
        "RxNorm:343643",
        "RxNorm:345816",
        "RxNorm:351311",
        "RxNorm:351314",
        "RxNorm:351315",
        "RxNorm:358548",
        "RxNorm:435681",
        "RxNorm:438141",
        "RxNorm:451789",
        "RxNorm:541463",
        "RxNorm:541467",
        "RxNorm:541474",
        "RxNorm:541478",
        "RxNorm:541481",
        "RxNorm:541484",
        "RxNorm:541487",
        "RxNorm:542546",
        "RxNorm:542549",
        "RxNorm:542553",
        "RxNorm:542939",
        "RxNorm:688245",
        "RxNorm:755976",
        "RxNorm:755977",
        "RxNorm:1869595",
        "RxNorm:1869605",
        "RxNorm:1812073",
        "RxNorm:1812078",
        "RxNorm:1812079",
        "RxNorm:1812080",
        "RxNorm:1812094",
        "RxNorm:1812095",
        "RxNorm:1812096",
        "RxNorm:1812192",
        "RxNorm:1812194",
        "RxNorm:103163",
        "RxNorm:105392",
        "RxNorm:105394",
        "RxNorm:108882",
        "RxNorm:569262",
        "RxNorm:569272",
        "RxNorm:197580",
        "RxNorm:197585",
        "RxNorm:198021",
        "RxNorm:201072",
        "RxNorm:201073",
        "RxNorm:203976",
        "RxNorm:204510",
        "RxNorm:204512",
        "RxNorm:205593",
        "RxNorm:205594",
        "RxNorm:205595",
        "RxNorm:205596",
        "RxNorm:205597",
        "RxNorm:205598",
        "RxNorm:205599",
        "RxNorm:205600",
        "RxNorm:205601",
        "RxNorm:205602",
        "RxNorm:205607",
        "RxNorm:205620",
        "RxNorm:205622",
        "RxNorm:205627",
        "RxNorm:205628",
        "RxNorm:205629",
        "RxNorm:205630",
        "RxNorm:205631",
        "RxNorm:205632",
        "RxNorm:205633",
        "RxNorm:205634",
        "RxNorm:205635",
        "RxNorm:205636",
        "RxNorm:205637",
        "RxNorm:205638",
        "RxNorm:205639",
        "RxNorm:205669",
        "RxNorm:205671",
        "RxNorm:205673",
        "RxNorm:205675",
        "RxNorm:205676",
        "RxNorm:205677",
        "RxNorm:205683",
        "RxNorm:205684",
        "RxNorm:205692",
        "RxNorm:205702",
        "RxNorm:205710",
        "RxNorm:205711",
        "RxNorm:205712",
        "RxNorm:205713",
        "RxNorm:205714",
        "RxNorm:205717",
        "RxNorm:575255",
        "RxNorm:575254",
        "RxNorm:575253",
        "RxNorm:575259",
        "RxNorm:575413",
        "RxNorm:208559",
        "RxNorm:208562",
        "RxNorm:208577",
        "RxNorm:208588",
        "RxNorm:208589",
        "RxNorm:208590",
        "RxNorm:208591",
        "RxNorm:208592",
        "RxNorm:208593",
        "RxNorm:208598",
        "RxNorm:208599",
        "RxNorm:208600",
        "RxNorm:208601",
        "RxNorm:208602",
        "RxNorm:208647",
        "RxNorm:208649",
        "RxNorm:208677",
        "RxNorm:208683",
        "RxNorm:208813",
        "RxNorm:208821",
        "RxNorm:545158",
        "RxNorm:212023",
        "RxNorm:566582",
        "RxNorm:566525",
        "RxNorm:566561",
        "RxNorm:688243",
        "RxNorm:566526",
        "RxNorm:566575",
        "RxNorm:566583",
        "RxNorm:569239",
        "RxNorm:569236",
        "RxNorm:216523",
        "RxNorm:566563",
        "RxNorm:566566",
        "RxNorm:569259",
        "RxNorm:575412",
        "RxNorm:542544",
        "RxNorm:566519",
        "RxNorm:566491",
        "RxNorm:22690",
        "RxNorm:22694",
        "RxNorm:227142",
        "RxNorm:235486",
        "RxNorm:242990",
        "RxNorm:566492",
        "RxNorm:566493",
        "RxNorm:572337",
        "RxNorm:566494",
        "RxNorm:566522",
        "RxNorm:566495",
        "RxNorm:246730",
        "RxNorm:542547",
        "RxNorm:566514",
        "RxNorm:566521",
        "RxNorm:566567",
        "RxNorm:249034",
        "RxNorm:566523",
        "RxNorm:569269",
        "RxNorm:569314",
        "RxNorm:566496",
        "RxNorm:566524",
        "RxNorm:566564",
        "RxNorm:566568",
        "RxNorm:566497",
        "RxNorm:569261",
        "RxNorm:569271",
        "RxNorm:566498",
        "RxNorm:249225",
        "RxNorm:250818",
        "RxNorm:250828",
        "RxNorm:251058",
        "RxNorm:251066",
        "RxNorm:252035",
        "RxNorm:252361",
        "RxNorm:260384",
        "RxNorm:566512",
        "RxNorm:566527",
        "RxNorm:261990",
        "RxNorm:541461",
        "RxNorm:541482",
        "RxNorm:541465",
        "RxNorm:541485",
        "RxNorm:541472",
        "RxNorm:541476",
        "RxNorm:541479",
        "RxNorm:542551",
        "RxNorm:566528",
        "RxNorm:566499",
        "RxNorm:569263",
        "RxNorm:569346",
        "RxNorm:574624",
        "RxNorm:574679",
        "RxNorm:309677",
        "RxNorm:309678",
        "RxNorm:309679",
        "RxNorm:309680",
        "RxNorm:309681",
        "RxNorm:309682",
        "RxNorm:309683",
        "RxNorm:309684",
        "RxNorm:309686",
        "RxNorm:309687",
        "RxNorm:309688",
        "RxNorm:309690",
        "RxNorm:309691",
        "RxNorm:309692",
        "RxNorm:309693",
        "RxNorm:309694",
        "RxNorm:309695",
        "RxNorm:309696",
        "RxNorm:309697",
        "RxNorm:309698",
        "RxNorm:309699",
        "RxNorm:309700",
        "RxNorm:569273",
        "RxNorm:541468",
        "RxNorm:566529",
        "RxNorm:315061",
        "RxNorm:569462",
        "RxNorm:3265",
        "RxNorm:329677",
        "RxNorm:330437",
        "RxNorm:330680",
        "RxNorm:330802",
        "RxNorm:332981",
        "RxNorm:566574",
        "RxNorm:566581",
        "RxNorm:575233",
        "RxNorm:575256",
        "RxNorm:335018",
        "RxNorm:343033",
        "RxNorm:343040",
        "RxNorm:347785",
        "RxNorm:348336",
        "RxNorm:350217",
        "RxNorm:351308",
        "RxNorm:351309",
        "RxNorm:351310",
        "RxNorm:351491",
        "RxNorm:262356",
        "RxNorm:542937",
        "RxNorm:387080",
        "RxNorm:388755",
        "RxNorm:393267",
        "RxNorm:403908",
        "RxNorm:404630",
        "RxNorm:409356",
        "RxNorm:411225",
        "RxNorm:411549",
        "RxNorm:415363",
        "RxNorm:418759",
        "RxNorm:418861",
        "RxNorm:419048",
        "RxNorm:420634",
        "RxNorm:420697",
        "RxNorm:422009",
        "RxNorm:429196",
        "RxNorm:431720",
        "RxNorm:432822",
        "RxNorm:433622",
        "RxNorm:436510",
        "RxNorm:438701",
        "RxNorm:438883",
        "RxNorm:438885",
        "RxNorm:438889",
        "RxNorm:446662",
        "RxNorm:447036",
        "RxNorm:451790",
        "RxNorm:451974",
        "RxNorm:452194",
        "RxNorm:452787",
        "RxNorm:48933",
        "RxNorm:541470",
        "RxNorm:541488",
        "RxNorm:562770",
        "RxNorm:563253",
        "RxNorm:564044",
        "RxNorm:565676",
        "RxNorm:565677",
        "RxNorm:566207",
        "RxNorm:566500",
        "RxNorm:566504",
        "RxNorm:566520",
        "RxNorm:566530",
        "RxNorm:566531",
        "RxNorm:566593",
        "RxNorm:566601",
        "RxNorm:566602",
        "RxNorm:566603",
        "RxNorm:566604",
        "RxNorm:566605",
        "RxNorm:566608",
        "RxNorm:569260",
        "RxNorm:569264",
        "RxNorm:569270",
        "RxNorm:569312",
        "RxNorm:569340",
        "RxNorm:569470",
        "RxNorm:574173",
        "RxNorm:575260",
        "RxNorm:575411",
        "RxNorm:597006",
        "RxNorm:597008",
        "RxNorm:604028",
        "RxNorm:604029",
        "RxNorm:608583",
        "RxNorm:630405",
        "RxNorm:630406",
        "RxNorm:630408",
        "RxNorm:748083",
        "RxNorm:748085",
        "RxNorm:759481",
        "RxNorm:759696",
        "RxNorm:759697",
        "RxNorm:790877",
        "RxNorm:790879",
        "RxNorm:795716",
        "RxNorm:797022",
        "RxNorm:797023",
        "RxNorm:828344",
        "RxNorm:828346",
        "RxNorm:844882",
        "RxNorm:846192",
        "RxNorm:847225",
        "RxNorm:849115",
        "RxNorm:2099701",
        "RxNorm:2099700",
        "RxNorm:1153892",
        "RxNorm:1153893",
        "RxNorm:1153894",
        "RxNorm:1153910",
        "RxNorm:1154073",
        "RxNorm:1154074",
        "RxNorm:1154075",
        "RxNorm:1156193",
        "RxNorm:1156194",
        "RxNorm:1156195",
        "RxNorm:1154240",
        "RxNorm:1154241",
        "RxNorm:1154242",
        "RxNorm:1154243",
        "RxNorm:1154244",
        "RxNorm:1154245",
        "RxNorm:1154246",
        "RxNorm:1154247",
        "RxNorm:1154248",
        "RxNorm:1154249",
        "RxNorm:1154250",
        "RxNorm:1154251",
        "RxNorm:1154252",
        "RxNorm:1154253",
        "RxNorm:1154254",
        "RxNorm:1154255",
        "RxNorm:1154256",
        "RxNorm:1154524",
        "RxNorm:1154525",
        "RxNorm:1154526",
        "RxNorm:1154527",
        "RxNorm:1154528",
        "RxNorm:1154529",
        "RxNorm:1154530",
        "RxNorm:1154531",
        "RxNorm:1154532",
        "RxNorm:1154533",
        "RxNorm:1154534",
        "RxNorm:1154535",
        "RxNorm:1154536",
        "RxNorm:1154537",
        "RxNorm:1154538",
        "RxNorm:1154539",
        "RxNorm:1152767",
        "RxNorm:1152768",
        "RxNorm:1152791",
        "RxNorm:1152113",
        "RxNorm:1151399",
        "RxNorm:1151400",
        "RxNorm:1151401",
        "RxNorm:1151402",
        "RxNorm:1153042",
        "RxNorm:1175213",
        "RxNorm:1175245",
        "RxNorm:1175246",
        "RxNorm:2387355",
        "RxNorm:2387356",
        "RxNorm:2261801",
        "RxNorm:2261802",
        "RxNorm:2265528",
        "RxNorm:2265530",
        "RxNorm:2265532",
        "RxNorm:2265534",
        "RxNorm:2265536",
        "RxNorm:2265538",
        "RxNorm:2265540",
        "RxNorm:2265542",
        "RxNorm:2265544",
        "RxNorm:2286257",
        "RxNorm:2286258",
        "RxNorm:2286261",
        "RxNorm:376210",
        "RxNorm:371730",
        "RxNorm:438142",
        "RxNorm:371731",
        "RxNorm:252867",
        "RxNorm:376211",
        "RxNorm:371732",
        "RxNorm:371734",
        "RxNorm:371733",
        "RxNorm:440457",
        "RxNorm:451961",
        "RxNorm:376196",
        "RxNorm:249729",
        "RxNorm:379385",
        "RxNorm:372475",
        "RxNorm:440625",
        "RxNorm:372476",
        "RxNorm:440626",
        "RxNorm:371724",
        "RxNorm:363170",
        "RxNorm:374699",
        "RxNorm:367251",
        "RxNorm:367279",
        "RxNorm:367255",
        "RxNorm:367254",
        "RxNorm:93249",
        "RxNorm:367280",
        "RxNorm:367266",
        "RxNorm:377469",
        "RxNorm:374698",
        "RxNorm:365817",
        "RxNorm:365820",
        "RxNorm:93250",
        "RxNorm:365819",
        "RxNorm:365818",
        "RxNorm:373028",
        "RxNorm:367264",
        "RxNorm:376267",
        "RxNorm:363850",
        "RxNorm:363849",
        "RxNorm:363848",
        "RxNorm:373027",
        "RxNorm:377671",
        "RxNorm:362345",
        "RxNorm:378593",
        "RxNorm:446661",
        "RxNorm:447038",
        "RxNorm:373387",
        "RxNorm:371737",
        "RxNorm:452195",
        "RxNorm:371736",
        "RxNorm:452064",
        "RxNorm:374438",
        "RxNorm:94335",
        "RxNorm:378984",
        "RxNorm:94334",
        "RxNorm:377456",
        "RxNorm:371720",
        "RxNorm:393542",
        "RxNorm:309685",
        "RxNorm:205690",
        "RxNorm:205691",
        "RxNorm:350226",
        "RxNorm:347842",
        "RxNorm:406447",
        "RxNorm:251977",
        "RxNorm:349879",
        "RxNorm:346938",
        "RxNorm:371722",
        "RxNorm:92335",
        "RxNorm:364966",
        "RxNorm:377280",
        "RxNorm:361870",
        "RxNorm:371725",
        "RxNorm:363487",
        "RxNorm:363213",
        "RxNorm:363214",
        "RxNorm:363486",
        "RxNorm:363003",
        "RxNorm:363216",
        "RxNorm:363485",
        "RxNorm:405942",
        "RxNorm:405941",
        "RxNorm:363484",
        "RxNorm:363483",
        "RxNorm:363482",
        "RxNorm:363481",
        "RxNorm:363480",
        "RxNorm:363479",
        "RxNorm:363584",
        "RxNorm:363478",
        "RxNorm:363477",
        "RxNorm:363476",
        "RxNorm:371721",
        "RxNorm:365676",
        "RxNorm:365611",
        "RxNorm:365667",
        "RxNorm:365693",
        "RxNorm:365692",
        "RxNorm:365691",
        "RxNorm:365690",
        "RxNorm:365689",
        "RxNorm:365688",
        "RxNorm:365687",
        "RxNorm:365686",
        "RxNorm:365685",
        "RxNorm:375798",
        "RxNorm:361916",
        "RxNorm:371726",
        "RxNorm:103217",
        "RxNorm:367274",
        "RxNorm:367273",
        "RxNorm:367272",
        "RxNorm:367263",
        "RxNorm:377418",
        "RxNorm:363679",
        "RxNorm:363678",
        "RxNorm:363845",
        "RxNorm:371723",
        "RxNorm:365842",
        "RxNorm:438882",
        "RxNorm:371728",
        "RxNorm:364896",
        "RxNorm:371729",
        "RxNorm:369461",
        "RxNorm:369460",
        "RxNorm:369516",
        "RxNorm:369569",
        "RxNorm:371727",
        "RxNorm:438884",
        "RxNorm:377672",
        "RxNorm:92340",
        "RxNorm:378023",
        "RxNorm:393151",
        "RxNorm:377316",
        "RxNorm:361991",
        "RxNorm:362045",
        "RxNorm:371735",
        "RxNorm:438872",
        "RxNorm:438688",
        "RxNorm:438702",
        "RxNorm:365810",
        "RxNorm:562361",
        "RxNorm:544981",
        "RxNorm:544982",
        "RxNorm:544980",
        "RxNorm:562362",
        "RxNorm:541491",
        "RxNorm:541489",
        "RxNorm:541480",
        "RxNorm:541483",
        "RxNorm:542938",
        "RxNorm:541490",
        "RxNorm:541486",
        "RxNorm:541477",
        "RxNorm:541462",
        "RxNorm:541466",
        "RxNorm:541469",
        "RxNorm:541473",
        "RxNorm:542545",
        "RxNorm:542548",
        "RxNorm:542552",
        "RxNorm:597007",
        "RxNorm:630407",
        "RxNorm:637664",
        "RxNorm:632295",
        "RxNorm:688244",
        "RxNorm:748087",
        "RxNorm:748086",
        "RxNorm:757171",
        "RxNorm:757087",
        "RxNorm:757088",
        "RxNorm:759482",
        "RxNorm:759483",
        "RxNorm:790878",
        "RxNorm:790462",
        "RxNorm:828345",
        "RxNorm:854175",
        "RxNorm:854177",
        "RxNorm:854181",
        "RxNorm:854179",
        "RxNorm:854176",
        "RxNorm:854180",
        "RxNorm:881354",
        "RxNorm:881355",
        "RxNorm:880649",
        "RxNorm:880657",
        "RxNorm:880655",
        "RxNorm:880656",
        "RxNorm:895526",
        "RxNorm:895521",
        "RxNorm:895525",
        "RxNorm:901648",
        "RxNorm:901649",
        "RxNorm:901647",
        "RxNorm:1006791",
        "RxNorm:1009386",
        "RxNorm:1009391",
        "RxNorm:1011080",
        "RxNorm:1011079",
        "RxNorm:1009388",
        "RxNorm:1009392",
        "RxNorm:1009390",
        "RxNorm:1012133",
        "RxNorm:1012257",
        "RxNorm:1012256",
        "RxNorm:1049549",
        "RxNorm:1049386",
        "RxNorm:1049548",
        "RxNorm:1049384",
        "RxNorm:1049385",
        "RxNorm:1049399",
        "RxNorm:1049400",
        "RxNorm:1086700",
        "RxNorm:1086701",
        "RxNorm:1086699",
        "RxNorm:1087757",
        "RxNorm:1087756",
        "RxNorm:1087919",
        "RxNorm:1087918",
        "RxNorm:1089820",
        "RxNorm:1089818",
        "RxNorm:1089819",
        "RxNorm:1116926",
        "RxNorm:1116927",
        "RxNorm:1145623",
        "RxNorm:1145624",
        "RxNorm:1249709",
        "RxNorm:1249711",
        "RxNorm:1249710",
        "RxNorm:1249712",
        "RxNorm:1375105",
        "RxNorm:1374391",
        "RxNorm:1376057",
        "RxNorm:1376061",
        "RxNorm:1376064",
        "RxNorm:1376054",
        "RxNorm:1376055",
        "RxNorm:1376059",
        "RxNorm:1376056",
        "RxNorm:1374378",
        "RxNorm:1376062",
        "RxNorm:1376063",
        "RxNorm:1376066",
        "RxNorm:1376060",
        "RxNorm:1374376",
        "RxNorm:1374377",
        "RxNorm:1375109",
        "RxNorm:1375108",
        "RxNorm:1376067",
        "RxNorm:1376068",
        "RxNorm:1376070",
        "RxNorm:1376069",
        "RxNorm:1374408",
        "RxNorm:1375115",
        "RxNorm:1374385",
        "RxNorm:1375107",
        "RxNorm:1374407",
        "RxNorm:1375114",
        "RxNorm:1374384",
        "RxNorm:1375104",
        "RxNorm:1374388",
        "RxNorm:1374389",
        "RxNorm:1374392",
        "RxNorm:1374390",
        "RxNorm:1374371",
        "RxNorm:1374372",
        "RxNorm:1374410",
        "RxNorm:1374387",
        "RxNorm:1374409",
        "RxNorm:1374386",
        "RxNorm:1534288",
        "RxNorm:1534289",
        "RxNorm:1534331",
        "RxNorm:1534398",
        "RxNorm:1545693",
        "RxNorm:1545694",
        "RxNorm:1545695",
        "RxNorm:1545696",
        "SNOMED:121528001",
        "SNOMED:296845006"
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