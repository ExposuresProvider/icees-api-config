let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b170f_acetone",
    identifiers = [
        "CHEBI:15347"
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