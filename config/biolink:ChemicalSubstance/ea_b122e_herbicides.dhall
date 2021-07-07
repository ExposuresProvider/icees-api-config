let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b122e_herbicides",
    identifiers = [
        "CHEBI:24527"
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