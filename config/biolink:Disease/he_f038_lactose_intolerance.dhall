let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_f038_lactose_intolerance",
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