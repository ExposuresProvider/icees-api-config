let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_a061a_pest_ants",
    identifiers = [
        "ENVO:00005804"
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