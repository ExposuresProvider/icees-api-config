let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_b009_atherosclerosis",
    identifiers = [
        "PUBCHEM.COMPOUND:72941823",
        "PUBCHEM.COMPOUND:11607970",
        "PUBCHEM.COMPOUND:10224454",
        "NCIT:C35768",
        "UMLS:C0004153",
        "NCIT:C34459",
        "UMLS:C0007775",
        "NCIT:C35767",
        "UMLS:C0017327",
        "NCIT:C35505",
        "UMLS:C0010054",
        "MONDO:0000980",
        "MONDO:0001876",
        "MONDO:0005311",
        "MONDO:0021661",
        "MONDO:0005010",
        "MONDO:0006694",
        "MONDO:0002275",
        "MONDO:0007169",
        "MONDO:0008843",
        "LOINC:LA28403-6",
        "LOINC:LP98960-5",
        "LOINC:58334-4",
        "LOINC:LA12725-0",
        "LOINC:LA12727-6",
        "LOINC:LA27838-4",
        "MESH:D050197",
        "SNOMED:38716007",
        "SNOMED:155382007",
        "SNOMED:194848007",
        "SNOMED:160362009",
        "SNOMED:39823006",
        "SNOMED:367108003",
        "SNOMED:233956002",
        "SNOMED:443502000",
        "SNOMED:300920004",
        "SNOMED:55382008",
        "SNOMED:155415000",
        "SNOMED:155316000",
        "SNOMED:266231003",
        "SNOMED:155416004",
        "SNOMED:137758007",
        "SNOMED:266258005",
        "SNOMED:266318005",
        "SNOMED:81817003",
        "SNOMED:441574008",
        "SNOMED:195252007",
        "SNOMED:233955003",
        "SNOMED:461441000124103",
        "SNOMED:461431000124108",
        "SNOMED:1033151000000100",
        "SNOMED:45281005",
        "SNOMED:284871000119105",
        "SNOMED:8001000119106",
        "SNOMED:284881000119108"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Disease"
        ]
    },
    binning_strategy = max_cutoff 2
}