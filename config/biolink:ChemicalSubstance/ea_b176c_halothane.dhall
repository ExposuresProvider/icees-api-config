let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b176c_halothane",
    identifiers = [
        "CHEBI:5615"
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