let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_a017d_heat_oil_kerosene",
    identifiers = [
        "ENVO:01001608"
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