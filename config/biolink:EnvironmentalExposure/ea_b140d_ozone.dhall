let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b140d_ozone",
    identifiers = [
        "CHEBI_25812"
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