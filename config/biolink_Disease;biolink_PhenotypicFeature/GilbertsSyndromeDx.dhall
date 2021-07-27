let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "GilbertsSyndromeDx",
    identifiers = [
        "OMIM:MTHU031877",
        "MESH:D005878",
        "LOINC:27503000"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:Disease",
            "biolink:PhenotypicFeature"
        ]
    }
}