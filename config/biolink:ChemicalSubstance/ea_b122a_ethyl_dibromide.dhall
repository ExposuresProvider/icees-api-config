let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b122a_ethyl_dibromide",
    identifiers = [
        "CHEBI:28534"
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