let meta = ../../common/meta.dhall
let geoid_mapping = meta.geoid_mapping
let string = meta.string
let range = meta.range
let qcut = meta.qcut
in {
    name = "EstProbabilityHighSchoolMaxEducation_qcut",
    identifiers = [
        "NCIT:C89278",
        "UMLS:C0599395",
        "NCIT:C67136",
        "UMLS:C0870649",
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
    binning_strategy = qcut 4
}