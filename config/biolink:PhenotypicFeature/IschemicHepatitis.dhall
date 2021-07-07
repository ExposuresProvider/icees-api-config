let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "IschemicHepatitis",
    identifiers = [
        "UMLS:C0473117",
        "SCTID:235877000"
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