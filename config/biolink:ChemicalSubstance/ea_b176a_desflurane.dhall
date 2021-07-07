let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b176a_desflurane",
    identifiers = [
        "CHEBI:4445"
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