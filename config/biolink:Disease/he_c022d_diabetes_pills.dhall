let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_c022d_diabetes_pills",
    identifiers = [
        "LOINC:LP124918-6",
        "LOINC:66176-9",
        "SCITD:389840003",
        "SCITD:390572003"
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