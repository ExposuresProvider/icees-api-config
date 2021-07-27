let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "Race",
    identifiers = [
        "NCIT:C17049",
        "UMLSCUI:C0034510",
        "NCIT:C93992",
        "UMLSCUI:C2986190",
        "SCTID:103579009",
        "PUBCHEM.COMPOUND:91782",
        "CHEBI:81969",
        "PUBCHEM.COMPOUND:42850",
        "MESH:C115528",
        "NCIT:C104495",
        "MESH:C103644",
        "MESH:C478659",
        "PUBCHEM.COMPOUND:82730",
        "PUBCHEM.COMPOUND:2610",
        "PUBCHEM.COMPOUND:165035",
        "CHEBI:60911",
        "PUBCHEM.COMPOUND:11298307",
        "MESH:C060300",
        "PUBCHEM.COMPOUND:155148",
        "PUBCHEM.COMPOUND:102344531",
        "PUBCHEM.COMPOUND:4843",
        "MESH:C025011",
        "PUBCHEM.COMPOUND:102119005",
        "PUBCHEM.COMPOUND:472252",
        "PUBCHEM.COMPOUND:7080",
        "PUBCHEM.COMPOUND:624971",
        "PUBCHEM.COMPOUND:5319886",
        "PUBCHEM.COMPOUND:15226270",
        "MESH:C539302",
        "PUBCHEM.COMPOUND:25382",
        "PUBCHEM.COMPOUND:71879",
        "PUBCHEM.COMPOUND:427877",
        "PUBCHEM.COMPOUND:35758",
        "PUBCHEM.COMPOUND:8418",
        "PUBCHEM.COMPOUND:59708",
        "PUBCHEM.COMPOUND:2196",
        "PUBCHEM.COMPOUND:163319",
        "PUBCHEM.COMPOUND:11033204",
        "PUBCHEM.COMPOUND:10433214",
        "PUBCHEM.COMPOUND:3086323",
        "PUBCHEM.COMPOUND:4626",
        "PUBCHEM.COMPOUND:5491013",
        "PUBCHEM.COMPOUND:46783587",
        "PUBCHEM.COMPOUND:65926",
        "CHEBI:51270",
        "PUBCHEM.COMPOUND:442986",
        "PUBCHEM.COMPOUND:779179",
        "PUBCHEM.COMPOUND:5491014",
        "PUBCHEM.COMPOUND:15407040",
        "PUBCHEM.COMPOUND:42291",
        "PUBCHEM.COMPOUND:12459105",
        "PUBCHEM.COMPOUND:6437877",
        "PUBCHEM.COMPOUND:68793",
        "PUBCHEM.COMPOUND:54747",
        "PUBCHEM.COMPOUND:178134",
        "PUBCHEM.COMPOUND:16132361",
        "UMLS:C0920122",
        "PUBCHEM.COMPOUND:132487833",
        "CHEBI:46955",
        "PUBCHEM.COMPOUND:86289953",
        "MESH:D000873",
        "PUBCHEM.COMPOUND:208851",
        "PUBCHEM.COMPOUND:3918",
        "PUBCHEM.COMPOUND:198695",
        "PUBCHEM.COMPOUND:127040829",
        "PUBCHEM.COMPOUND:132487829",
        "MESH:C000632147",
        "PUBCHEM.COMPOUND:86289954",
        "PUBCHEM.COMPOUND:5433",
        "PUBCHEM.COMPOUND:56838492",
        "CHEBI:37507",
        "PUBCHEM.COMPOUND:214346",
        "PUBCHEM.COMPOUND:21574476",
        "PUBCHEM.COMPOUND:127040828",
        "MESH:C000588642",
        "PUBCHEM.COMPOUND:5284574",
        "MESH:C019594",
        "PUBCHEM.COMPOUND:122364578",
        "PUBCHEM.COMPOUND:65955",
        "PUBCHEM.COMPOUND:132487832",
        "PUBCHEM.COMPOUND:95790322",
        "PUBCHEM.COMPOUND:21574473",
        "PUBCHEM.COMPOUND:122364577",
        "PUBCHEM.COMPOUND:12773956",
        "PUBCHEM.COMPOUND:132487831",
        "PUBCHEM.COMPOUND:14870186",
        "PUBCHEM.COMPOUND:21574472",
        "PUBCHEM.COMPOUND:76957024",
        "MESH:C574050",
        "MESH:C070231",
        "PUBCHEM.COMPOUND:21574475",
        "PUBCHEM.COMPOUND:12773958",
        "CHEBI:37088",
        "PUBCHEM.COMPOUND:45269800",
        "PUBCHEM.COMPOUND:61025",
        "PUBCHEM.COMPOUND:122209042",
        "PUBCHEM.COMPOUND:21574474",
        "PUBCHEM.COMPOUND:3047790",
        "MESH:C102552",
        "PUBCHEM.COMPOUND:95790328",
        "PUBCHEM.COMPOUND:65919",
        "PUBCHEM.COMPOUND:1983",
        "PUBCHEM.COMPOUND:132487828",
        "PUBCHEM.COMPOUND:71157",
        "PUBCHEM.COMPOUND:54597686",
        "PUBCHEM.COMPOUND:132487834",
        "PUBCHEM.COMPOUND:132487830",
        "MESH:D031642",
        "PUBCHEM.COMPOUND:51712",
        "PUBCHEM.COMPOUND:23172557",
        "PUBCHEM.COMPOUND:9648",
        "PUBCHEM.COMPOUND:11733274",
        "PUBCHEM.COMPOUND:52914109",
        "MESH:C000626300",
        "MESH:C062165",
        "PUBCHEM.COMPOUND:102253062",
        "PUBCHEM.COMPOUND:101259493",
        "PUBCHEM.COMPOUND:9942725",
        "PUBCHEM.COMPOUND:71685",
        "PUBCHEM.COMPOUND:132441",
        "PUBCHEM.COMPOUND:132607461",
        "PUBCHEM.COMPOUND:132539864",
        "PUBCHEM.COMPOUND:146678",
        "PUBCHEM.COMPOUND:52914108",
        "PUBCHEM.COMPOUND:203579",
        "MESH:C000626301",
        "PUBCHEM.COMPOUND:15407043",
        "PUBCHEM.COMPOUND:71893",
        "MESH:C118554",
        "CHEBI:146281",
        "PUBCHEM.COMPOUND:102253063",
        "PUBCHEM.COMPOUND:139586005",
        "PUBCHEM.COMPOUND:90424839",
        "PUBCHEM.COMPOUND:9837243",
        "PUBCHEM.COMPOUND:9571078",
        "PUBCHEM.COMPOUND:107751",
        "PUBCHEM.COMPOUND:132607460",
        "PUBCHEM.COMPOUND:139588019",
        "PUBCHEM.COMPOUND:139587843",
        "PUBCHEM.COMPOUND:131753132",
        "PUBCHEM.COMPOUND:18614983",
        "MESH:C000589006",
        "MESH:C435015",
        "PUBCHEM.COMPOUND:102253064",
        "PUBCHEM.COMPOUND:5032",
        "PUBCHEM.COMPOUND:19009344",
        "PUBCHEM.COMPOUND:23258398",
        "MESH:C000597211",
        "PUBCHEM.COMPOUND:198907",
        "PUBCHEM.COMPOUND:101136185",
        "PUBCHEM.COMPOUND:102482899",
        "CHEBI:50733",
        "PUBCHEM.COMPOUND:15331419",
        "PUBCHEM.COMPOUND:20230986",
        "PUBCHEM.COMPOUND:14162622",
        "PUBCHEM.COMPOUND:129652528",
        "PUBCHEM.COMPOUND:102482900",
        "PUBCHEM.COMPOUND:165157",
        "CHEBI:145988",
        "PUBCHEM.COMPOUND:102140113",
        "PUBCHEM.COMPOUND:129865605",
        "NCIT:C37932"
    ],
    feature = {
        feature_type = enum [
            "Native Hawaiian/Pacific Islander",
            "Caucasian",
            "African American",
            "Asian",
            "Unknown",
            "American/Alaskan Native",
            "Other"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}