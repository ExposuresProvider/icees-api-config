let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b158d_magnesium_oh",
    identifiers = [
        "CHEBI:35149"
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