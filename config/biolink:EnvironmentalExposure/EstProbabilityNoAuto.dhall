let meta = ../../common/meta.dhall
let string = meta.string
let range = meta.range
let geoid_mapping = meta.geoid_mapping
in {
    name = "EstProbabilityNoAuto",
    identifiers = [
        "SCTID:71783008"
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
    }
}