let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_q152_other_dust",
    identifiers = [
        "ENVO:02000127",
        "ENVO:02000128",
        "ENVO:02000129"
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