let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ROADTYPE",
    feature = {
        feature_type = enum [
            "Urban Unrestricted Access",
            "Rural Unrestricted Access",
            "Urban Restricted Access",
            "Rural Restricted Access"
        ],
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}