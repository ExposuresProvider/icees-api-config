let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "HCV_RNA",
    identifiers = [
        "UMLS:C4049267",
        "LOINC:75888-8",
        "LOINC:LP186248-3",
        "LOINC:LP379986-5",
        "LOINC:75886-2",
        "LOINC:LP379978-2",
        "LOINC:50023-1"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}