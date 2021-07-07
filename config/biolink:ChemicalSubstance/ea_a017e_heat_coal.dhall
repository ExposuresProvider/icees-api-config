let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_a017e_heat_coal",
    identifiers = [
        "ENVO_2000038",
        "ENVO_2000013",
        "ENVO:01000790",
        "ENVO:02000091"
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