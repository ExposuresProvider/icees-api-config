let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_a017g_heat_solar_energy",
    identifiers = [
        "ENVO_2000041"
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