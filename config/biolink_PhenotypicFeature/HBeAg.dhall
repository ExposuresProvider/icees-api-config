let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "HBeAg",
    identifiers = [
        "SCITD:143472004",
        "SCITD:166104006",
        "LOINC:31845-1",
        "LOINC:5192-0",
        "LOINC:77176-6",
        "LOINC:32178-6",
        "LOINC:5191-2",
        "LOINC:39007-0",
        "LOINC:75408-5",
        "LOINC:77739-1",
        "LOINC:5197-9"
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