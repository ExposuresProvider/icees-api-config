let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b140c_carbon_monoxide",
    identifiers = [
        "CHEBI_17245"
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