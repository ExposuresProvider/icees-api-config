let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "DILIN_SeverityScoreDx",
    identifiers = [
        "MESH:D056486"
    ],
    feature = {
        feature_type = enum [
            "Mild",
            "Moderate",
            "Moderate Hospitalized",
            "Severe",
            "Fatal"
        ],
        categories = [
            "biolink:Disease",
            "biolink:PhenotypicFeature"
        ]
    }
}