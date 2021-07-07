let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "GilbertsSyndrome",
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
            "biolink:PhenotypicFeature",
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}