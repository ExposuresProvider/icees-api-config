let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_q155_xrays",
    identifiers = [
        "ENVO_2000023"
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