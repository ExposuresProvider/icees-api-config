let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b146d_xrays",
    identifiers = [
        "ENVO_21001217"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    }
}