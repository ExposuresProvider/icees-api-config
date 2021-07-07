let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b134a_coal_dust",
    identifiers = [
        "ENVO:02000127"
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