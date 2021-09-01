let meta = ../../common/meta.dhall
let number = meta.number
in {
    name = "FVC_value_first",
    identifiers = [
        "LOINC:52485-0",
        "LOINC:19870-5",
        "NCIT:C111361",
        "UMLS:C3714541",
        "SNOMED:50834005"
    ],
    feature = {
        feature_type = number,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}