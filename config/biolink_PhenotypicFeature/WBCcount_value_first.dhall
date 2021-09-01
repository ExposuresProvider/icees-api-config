let meta = ../../common/meta.dhall
let number = meta.number
in {
    name = "WBCcount_value_first",
    identifiers = [
        "LOINC:26464-8",
        "LOINC:6690-2",
        "NCIT:C12529",
        "UMLS:C0023516",
        "SNOMED:52501007",
        "SNOMED:365630000"
    ],
    feature = {
        feature_type = number,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}