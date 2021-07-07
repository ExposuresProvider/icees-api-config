let meta = ../../common/meta.dhall
let geoid_mapping = meta.geoid_mapping
let range = meta.range
let string = meta.string
let qcut = meta.qcut
in {
    name = "EstHouseholdIncome_qcut",
    identifiers = [
        "NCIT:C70811",
        "UMLSCUI:C0557163",
        "SCTID:224168007",
        "SCTID:365553008"
    ],
    mapping = geoid_mapping {
        dataset = "acs",
        column = "median_HH_inc",
        datatype = string
    },
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    },
    binning_strategy = qcut 5
}