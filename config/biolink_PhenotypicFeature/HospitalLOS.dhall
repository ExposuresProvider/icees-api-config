let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "HospitalLOS",
    identifiers = [
        "LOINC:LP128529-7"
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}