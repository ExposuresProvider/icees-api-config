let meta = ../../common/meta.dhall
let geoid_mapping = meta.geoid_mapping
let range = meta.range
let string = meta.string
let cut = meta.cut
in {
    name = "EstProbabilityHighSchoolMaxEducation",
    identifiers = [
        "NCIT:C89278",
        "UMLSCUI:C0599395",
        "NCIT:C67136",
        "UMLSCUI:C0870649",
        "SCTID:473461003"
    ],
    mapping = geoid_mapping {
        dataset = "acs",
        column = "prp_HSminus",
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