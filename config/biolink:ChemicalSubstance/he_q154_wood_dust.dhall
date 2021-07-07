let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_q154_wood_dust",
    identifiers = [
        "ENVO:02000126"
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