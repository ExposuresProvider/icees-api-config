let meta = ../../common/meta.dhall
let string = meta.string
let range = meta.range
let geoid_mapping = meta.geoid_mapping
in {
    name = "EstProbabilityHouseholdNonHispWhite",
    identifiers = [
        "NCIT:C93992",
        "UMLSCUI:C2986190",
        "SCTID:185984009"
    ],
    mapping = geoid_mapping {
        dataset = "acs",
        column = "prp_nHwHHs",
        datatype = string
    },
    feature = {
        feature_type = range 1 4,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}