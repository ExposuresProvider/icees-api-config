let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b140b_carbon_dioxide",
    identifiers = [
        "CHEBI_23014"
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