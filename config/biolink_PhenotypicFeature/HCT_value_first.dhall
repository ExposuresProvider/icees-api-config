let meta = ../../common/meta.dhall
let number = meta.number
in {
    name = "HCT_value_first",
    identifiers = [
        "LOINC:24360-0",
        "LOINC:20570-8",
        "LOINC:4544-3",
        "NCIT:C64796",
        "UMLS:C0018935",
        "SCTID:365616005"
    ],
    feature = {
        feature_type = number,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}