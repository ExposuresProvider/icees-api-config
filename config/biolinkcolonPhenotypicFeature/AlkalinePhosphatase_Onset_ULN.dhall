let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "AlkalinePhosphatase_Onset_ULN",
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}