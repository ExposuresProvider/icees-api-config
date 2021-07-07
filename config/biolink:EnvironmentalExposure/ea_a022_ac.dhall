let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_a022_ac",
    identifiers = [
        "fENVO:00002874"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}