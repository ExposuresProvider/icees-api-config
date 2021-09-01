let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "IschemicHepatitisDx",
    identifiers = [
        "UMLS:C0473117",
        "SNOMED:235877000"
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