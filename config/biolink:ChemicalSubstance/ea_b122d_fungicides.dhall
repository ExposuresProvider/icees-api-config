let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b122d_fungicides",
    identifiers = [
        "ENVO_01001041",
        "ENVO_01001058"
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