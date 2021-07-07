let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_a017f_heat_wood",
    identifiers = [
        "ENVO:01001292",
        "ENVO:03000131"
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