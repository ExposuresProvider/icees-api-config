let meta = ../../common/meta.dhall
let geoid_mapping = meta.geoid_mapping
let string = meta.string
let range = meta.range
let cut = meta.cut
in {
    name = "EstResidentialDensity25Plus",
    identifiers = [
        "NCIT:C45781",
        "UMLSCUI:C0178587",
        "SCTID:272497004"
    ],
    mapping = geoid_mapping {
        dataset = "acs",
        column = "total_25plus",
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