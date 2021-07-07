let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_e261_sunlamp",
    identifiers = [
        "NCIT:C50197"
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