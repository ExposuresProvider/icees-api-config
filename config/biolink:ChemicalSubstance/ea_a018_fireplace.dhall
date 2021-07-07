let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_a018_fireplace",
    identifiers = [
        "ENVO:03000122"
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