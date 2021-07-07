let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b170d_acrylic",
    identifiers = [
        "CHEBI:18308"
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