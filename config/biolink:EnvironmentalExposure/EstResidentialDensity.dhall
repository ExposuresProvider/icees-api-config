let meta = ../../common/meta.dhall
let string = meta.string
let range = meta.range
let geoid_mapping = meta.geoid_mapping
in {
    name = "EstResidentialDensity",
    identifiers = [
        "NCIT:C45781",
        "UMLSCUI:C0178587",
        "SCTID:272497004"
    ],
    mapping = geoid_mapping {
        dataset = "acs",
        column = "total_pop2016",
        datatype = string
    },
    feature = {
        feature_type = range 1 3,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}