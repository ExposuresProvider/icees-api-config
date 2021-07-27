let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "DrugAllergy",
    identifiers = [
        "UMLS:C0455589",
        "UMLS:C0571705",
        "UMLS:C0455606",
        "UMLS:C0262581",
        "UMLS:C0571280",
        "UMLS:C0570663",
        "UMLS:C0571255",
        "UMLS:C0421286",
        "UMLS:C0571526",
        "UMLS:C0571300",
        "UMLS:C0571373",
        "UMLS:C0571505",
        "UMLS:C0571516",
        "UMLS:C0263347",
        "UMLS:C0570642",
        "UMLS:C4303977",
        "UMLS:C0571523",
        "UMLS:C0570881",
        "UMLS:C4075826",
        "UMLS:C0571773",
        "UMLS:C1536015",
        "UMLS:C0570904",
        "UMLS:C0570537",
        "UMLS:C3662101",
        "UMLS:C0570882",
        "UMLS:C0570510",
        "MONDO:0044982",
        "MONDO:0000775",
        "SCTID:93431001",
        "SCTID:161590003",
        "SCTID:138858004",
        "SCTID:294954006",
        "SCTID:295047007",
        "SCTID:294672003",
        "MESH:D004342"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}