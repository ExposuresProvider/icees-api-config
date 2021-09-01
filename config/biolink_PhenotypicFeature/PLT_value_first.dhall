let meta = ../../common/meta.dhall
let number = meta.number
in {
    name = "PLT_value_first",
    identifiers = [
        "LOINC:26515-7",
        "LOINC:7773",
        "NCIT:C12520",
        "UMLS:C0005821",
        "SNOMED:365632008"
    ],
    feature = {
        feature_type = number,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}