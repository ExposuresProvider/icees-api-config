let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "LungTransplant",
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:ClinicalIntervention",
            "biolink:PhenotypicFeature"
        ]
    }
}