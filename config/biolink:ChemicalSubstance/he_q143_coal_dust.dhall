let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_q143_coal_dust",
    identifiers = [
        "ENVO:02000099"
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