let meta = ../../common/meta.dhall
let string = meta.string
let range = meta.range
let geoid_mapping = meta.geoid_mapping
in {
    name = "EstProbabilityNoHealthIns",
    identifiers = [
        "NCIT:C70696",
        "UMLSCUI:C2347682",
        "SCTID:419808006"
    ],
    mapping = geoid_mapping {
        dataset = "acs",
        column = "prp_not_insured",
        datatype = string
    },
    feature = {
        feature_type = range 1 4,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}