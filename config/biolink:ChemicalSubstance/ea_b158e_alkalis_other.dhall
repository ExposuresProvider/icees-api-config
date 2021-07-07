let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b158e_alkalis_other",
    identifiers = [
        "CHEBI_22313",
        "CHEBI_22314"
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