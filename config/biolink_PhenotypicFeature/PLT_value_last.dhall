let meta = ../../common/meta.dhall
let number = meta.number
in {
    name = "PLT_value_last",
    identifiers = [
        "LOINC:26515-7",
        "LOINC:7773",
        "NCIT:C12520",
        "UMLSCUI:C0005821",
        "SCTID:365632008"
    ],
    feature = {
        feature_type = number,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}