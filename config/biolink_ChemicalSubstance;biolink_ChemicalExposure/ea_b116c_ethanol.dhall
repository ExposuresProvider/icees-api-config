let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ea_b116c_ethanol",
    identifiers = [
        "CHEBI:16236",
        "CHEBI:17790",
        "CHEBI:17790",
        "CHEBI:137685",
        "CHEBI:17987",
        "CHEBI:49000",
        "CHEBI:134755",
        "CHEBI:207496",
        "CHEBI:30966",
        "CHEBI:46791",
        "CHEBI:28905",
        "CHEBI:38138",
        "CHEBI:55311",
        "CHEBI:24814",
        "CHEBI:45213",
        "CHEBI:45895",
        "CHEBI:27615",
        "CHEBI:38137",
        "CHEBI:18664",
        "CHEBI:38690",
        "CHEBI:38816",
        "CHEBI:59984",
        "CHEBI:29323",
        "CHEBI:24722",
        "CHEBI:28182",
        "CHEBI:132752",
        "CHEBI:59652",
        "CHEBI:131607",
        "CHEBI:22893",
        "CHEBI:41214",
        "CHEBI:19280",
        "CHEBI:17069",
        "CHEBI:1895",
        "CHEBI:27995",
        "CHEBI:28649",
        "CHEBI:62527",
        "CHEBI:137944",
        "CHEBI:16131",
        "CHEBI:31995",
        "CHEBI:27628",
        "CHEBI:669",
        "CHEBI:44903",
        "CHEBI:48220",
        "CHEBI:53380",
        "CHEBI:61617",
        "CHEBI:142766",
        "CHEBI:63104",
        "CHEBI:84258",
        "CHEBI:41883",
        "CHEBI:62150",
        "CHEBI:17074",
        "CHEBI:35091",
        "CHEBI:16346",
        "CHEBI:45616",
        "CHEBI:88826",
        "CHEBI:131340",
        "CHEBI:34989",
        "CHEBI:16597",
        "CHEBI:18353",
        "CHEBI:16892",
        "CHEBI:82559",
        "CHEBI:88143",
        "CHEBI:31042",
        "CHEBI:10782",
        "CHEBI:15420",
        "CHEBI:69225",
        "CHEBI:48702",
        "CHEBI:48704",
        "CHEBI:16709",
        "CHEBI:83431",
        "CHEBI:28012",
        "CHEBI:69226",
        "CHEBI:17134",
        "CHEBI:48703",
        "CHEBI:6794",
        "CHEBI:115155",
        "CHEBI:142430",
        "CHEBI:16913",
        "CHEBI:22469",
        "CHEBI:69444",
        "CHEBI:73248",
        "CHEBI:143246",
        "CHEBI:60528",
        "CHEBI:73171",
        "CHEBI:145806",
        "CHEBI:469",
        "CHEBI:128",
        "CHEBI:142669",
        "CHEBI:61228",
        "CHEBI:29081",
        "CHEBI:300",
        "CHEBI:133644",
        "CHEBI:133645",
        "CHEBI:133643",
        "CHEBI:4998",
        "CHEBI:91207",
        "CHEBI:65857",
        "CHEBI:30961",
        "CHEBI:132839",
        "CHEBI:89951",
        "CHEBI:119",
        "CHEBI:33016",
        "CHEBI:88534",
        "CHEBI:141154",
        "CHEBI:7645",
        "CHEBI:83688",
        "CHEBI:83689",
        "CHEBI:83693",
        "CHEBI:83694",
        "CHEBI:142672",
        "CHEBI:28593",
        "CHEBI:61226",
        "CHEBI:470",
        "CHEBI:8093",
        "CHEBI:142756",
        "CHEBI:16053",
        "CHEBI:63609",
        "CHEBI:64019",
        "CHEBI:48692",
        "CHEBI:48693",
        "CHEBI:31902",
        "CHEBI:61148",
        "CHEBI:86012",
        "CHEBI:27509",
        "CHEBI:4791",
        "CHEBI:141850",
        "CHEBI:131531",
        "CHEBI:141221",
        "CHEBI:143898",
        "CHEBI:131532",
        "CHEBI:9704",
        "CHEBI:34692",
        "CHEBI:63684",
        "CHEBI:63687",
        "CHEBI:15854",
        "CHEBI:65966",
        "CHEBI:145330",
        "CHEBI:174690",
        "CHEBI:7819",
        "CHEBI:10417",
        "CHEBI:3703",
        "CHEBI:64062",
        "CHEBI:78417",
        "CHEBI:78418",
        "CHEBI:421707",
        "CHEBI:145332",
        "CHEBI:64064",
        "CHEBI:143596",
        "CHEBI:138971",
        "CHEBI:6541",
        "CHEBI:31410",
        "CHEBI:10278",
        "CHEBI:134193",
        "CHEBI:91329",
        "CHEBI:156095",
        "CHEBI:63840",
        "CHEBI:6550",
        "CHEBI:69542",
        "CHEBI:52486",
        "CHEBI:2361",
        "CHEBI:63243",
        "CHEBI:77270",
        "CHEBI:64021",
        "CHEBI:5552",
        "CHEBI:52482",
        "CHEBI:138040",
        "CHEBI:143256",
        "CHEBI:70467",
        "CHEBI:64020",
        "CHEBI:2766",
        "CHEBI:63656",
        "CHEBI:85572",
        "CHEBI:52484",
        "CHEBI:74838",
        "CHEBI:67514",
        "CHEBI:139019",
        "CHEBI:4768",
        "CHEBI:142060"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    },
    binning_strategy = max_cutoff 2
}