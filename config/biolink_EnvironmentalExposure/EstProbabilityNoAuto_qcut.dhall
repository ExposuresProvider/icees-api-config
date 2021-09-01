let meta = ../../common/meta.dhall
let geoid_mapping = meta.geoid_mapping
let string = meta.string
let range = meta.range
let qcut = meta.qcut
in {
    name = "EstProbabilityNoAuto_qcut",
    identifiers = [
        "SNOMED:71783008"
    ],
    mapping = geoid_mapping {
        dataset = "acs",
        column = "prp_no_auto",
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