let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_q144_coal",
    identifiers = [
        "ENVO_01001440",
        "ENVO_2000013",
        "ENVO_2000037"
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