let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "INR_Onset",
    identifiers = [
        "SCITD:1951000175101",
        "SCITD:165581004",
        "SCITD:165583001",
        "SCITD:165582006",
        "MESH:D019934"
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}