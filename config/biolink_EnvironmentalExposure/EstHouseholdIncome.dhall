let meta = ../../common/meta.dhall
let geoid_mapping = meta.geoid_mapping
let string = meta.string
let range = meta.range
let cut = meta.cut
in {
    name = "EstHouseholdIncome",
    identifiers = [
        "NCIT:C70811",
        "UMLS:C0557163",
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
    binning_strategy = cut 5
}