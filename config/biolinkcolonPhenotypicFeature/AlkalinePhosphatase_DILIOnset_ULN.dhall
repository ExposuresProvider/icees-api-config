let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "AlkalinePhosphatase_DILIOnset_ULN",
    identifiers = [
        "HP:0003155"
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}