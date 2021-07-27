let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "HBV_Positive",
    identifiers = [
        "LOINC:55275-2"
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}