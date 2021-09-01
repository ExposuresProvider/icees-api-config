let meta = ../../common/meta.dhall
let geoid_mapping = meta.geoid_mapping
let string = meta.string
let range = meta.range
let cut = meta.cut
in {
    name = "EstProbabilityNonHispWhite",
    identifiers = [
        "NCIT:C93992",
        "UMLS:C2986190",
        "SNOMED:185984009"
    ],
    mapping = geoid_mapping {
        dataset = "acs",
        column = "nHwtindiv",
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