let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "Bilirubin_Peak_DILIOnsetToMonth6_ULN",
    identifiers = [
        "HP:0033479"
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}