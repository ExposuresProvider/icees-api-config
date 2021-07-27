let meta = ../../common/meta.dhall
let geoid_mapping = meta.geoid_mapping
let string = meta.string
let range = meta.range
let qcut = meta.qcut
in {
    name = "EstProbabilityESL_qcut",
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
    binning_strategy = qcut 4
}