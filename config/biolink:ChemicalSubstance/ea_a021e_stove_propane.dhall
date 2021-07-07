let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_a021e_stove_propane",
    identifiers = [
        "ENVO:01000553",
        "CHEBI:32879"
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