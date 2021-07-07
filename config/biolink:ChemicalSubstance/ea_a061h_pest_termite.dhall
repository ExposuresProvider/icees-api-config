let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_a061h_pest_termite",
    identifiers = [
        "ENVO:2000006"
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