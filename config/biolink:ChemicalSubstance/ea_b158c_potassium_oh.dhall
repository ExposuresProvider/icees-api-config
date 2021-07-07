let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b158c_potassium_oh",
    identifiers = [
        "CHEBI:32035"
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