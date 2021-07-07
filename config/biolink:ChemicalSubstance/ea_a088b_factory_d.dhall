let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_a088b_factory_d",
    identifiers = [
        "ENVO_01000536"
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