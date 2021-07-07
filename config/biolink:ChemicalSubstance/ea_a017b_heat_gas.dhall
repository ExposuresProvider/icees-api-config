let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_a017b_heat_gas",
    identifiers = [
        "ENVO:01001740",
        "ENVO_2000012"
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