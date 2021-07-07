let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_q140_asbestos",
    identifiers = [
        "ENVO_2000026"
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