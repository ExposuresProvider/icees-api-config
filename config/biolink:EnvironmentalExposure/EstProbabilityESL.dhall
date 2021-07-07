let meta = ../../common/meta.dhall
let geoid_mapping = meta.geoid_mapping
let range = meta.range
let string = meta.string
let cut = meta.cut
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
    },
    binning_strategy = cut 4
}