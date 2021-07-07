let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_q145_diesel",
    identifiers = [
        "ENVO_2000037",
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