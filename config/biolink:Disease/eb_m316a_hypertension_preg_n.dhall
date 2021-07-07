let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_m316a_hypertension_preg_n",
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}