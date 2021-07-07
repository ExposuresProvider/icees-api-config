let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "AlcoholRelatedLiverDisease",
    identifiers = [
        "MESH:D008108",
        "UMLS:C0023896"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}