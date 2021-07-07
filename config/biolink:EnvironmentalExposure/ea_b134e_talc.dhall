let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b134e_talc",
    identifiers = [
        "ENVO_01001285",
        "CHEBI_32178"
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