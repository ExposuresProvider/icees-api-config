let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b134d_silica",
    identifiers = [
        "ENVO_01001282",
        "ENVO_01001285"
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