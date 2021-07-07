let meta = ../../common/meta.dhall
let string = meta.string
let range = meta.range
let geoid_mapping = meta.geoid_mapping
in {
    name = "EstProbabilityESL",
    identifiers = [
        "SCTID:161140009"
    ],
    mapping = geoid_mapping {
        dataset = "acs",
        column = "EstPropPersons5PlusNoEnglish",
        datatype = string
    },
    feature = {
        feature_type = range 1 4,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}