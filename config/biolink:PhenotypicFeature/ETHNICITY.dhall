let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ETHNICITY",
    feature = {
        feature_type = enum [
            "Non-Hispanic/Non-Latino",
            "Unknown/NR",
            "Hispanic Latino"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}