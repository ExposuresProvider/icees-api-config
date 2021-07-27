let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ConcomitantDrugs",
    identifiers = [
        "UMLS:C1536016",
        "LOINC:81950-8",
        "NCIT:C1654",
        "UMLSCUI:C0301532",
        "SCTID:432881000124108",
        "SCTID:1039790",
        "SCTID:1039789",
        "SCTID:1039788",
        "SCTID:1296511",
        "RxNorm:2169295",
        "RxNorm:2268214",
        "RxNorm:36387",
        "RxNorm:312935",
        "SCTID:412302003",
        "SCTID:13280701000001104",
        "SCTID:3585711000001100",
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
        "SCTID:387569009",
        "SCTID:105359004",
        "SCTID:39993",
        "SCTID:329007"
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