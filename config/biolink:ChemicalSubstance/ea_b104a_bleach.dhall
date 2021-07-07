let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b104a_bleach",
    identifiers = [
        "CHEBI:132717"
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