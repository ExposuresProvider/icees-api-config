let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_q150_pesticide",
    identifiers = [
        "CHEBI_33287"
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