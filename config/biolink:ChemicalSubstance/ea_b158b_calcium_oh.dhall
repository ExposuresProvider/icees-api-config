let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b158b_calcium_oh",
    identifiers = [
        "CHEBI_3311"
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