let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_f125_pneumonia_vir",
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