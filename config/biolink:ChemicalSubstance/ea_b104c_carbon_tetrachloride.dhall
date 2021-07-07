let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b104c_carbon_tetrachloride",
    identifiers = [
        "CHEBI:27385",
        "NCIT:C63923",
        "UMLSCUI:C0007022"
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