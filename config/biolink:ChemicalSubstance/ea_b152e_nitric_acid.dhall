let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b152e_nitric_acid",
    identifiers = [
        "CHEBI:48107",
        "ENVO:03000123"
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