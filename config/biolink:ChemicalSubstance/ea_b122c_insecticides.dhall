let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b122c_insecticides",
    identifiers = [
        "CHEBI:24852"
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