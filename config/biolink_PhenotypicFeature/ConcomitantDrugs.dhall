let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ConcomitantDrugs",
    identifiers = [
        "UMLS:C1536016",
        "LOINC:81950-8",
        "NCIT:C1654",
        "UMLS:C0301532",
        "SNOMED:432881000124108",
        "SNOMED:1039790",
        "SNOMED:1039789",
        "SNOMED:1039788",
        "SNOMED:1296511",
        "RxNorm:2169295",
        "RxNorm:2268214",
        "RxNorm:36387",
        "RxNorm:312935",
        "SNOMED:412302003",
        "SNOMED:13280701000001104",
        "SNOMED:3585711000001100",
        "MESH:D000081226",
        "MESH:C002839",
        "CHEBI:15940",
        "MESH:D025101",
        "LOINC:LP102725-1",
        "CHEBI:16709",
        "MESH:D014805",
        "LOINC:LP102723-6",
        "CHEBI:15982",
        "CHEBI:17439",
        "CHEBI:48568",
        "CHEBI:17439",
        "LOINC:LP102727-7",
        "CHEBI:29073",
        "MESH:D014807",
        "LOINC:LP102730-1",
        "CHEBI:89324",
        "CHEBI:27300",
        "LOINC:LP17255-8",
        "LOINC:LP157701-6",
        "LOINC:LP264554-9",
        "LOINC:LP50349-7",
        "MESH:C049109",
        "MESH:D000077334",
        "SNOMED:387569009",
        "SNOMED:105359004",
        "SNOMED:39993",
        "SNOMED:329007"
    ],
    feature = {
        feature_type = enum [
            "0-2",
            "3-4",
            ">5"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}