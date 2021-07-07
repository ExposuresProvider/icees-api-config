let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b152b_sulfuric_acid",
    identifiers = [
        "ENVO:03000127",
        "ENVO:03000128"
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