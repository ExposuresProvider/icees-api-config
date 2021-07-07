let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_o127_cancer_skin_nonmel",
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