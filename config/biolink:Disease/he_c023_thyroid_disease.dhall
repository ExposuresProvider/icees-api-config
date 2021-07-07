let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_c023_thyroid_disease",
    identifiers = [
        "MESH:D013959",
        "LOINC:LA15157-3",
        "LOINC:LA15303-3",
        "SCITD:170780004"
    ],
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