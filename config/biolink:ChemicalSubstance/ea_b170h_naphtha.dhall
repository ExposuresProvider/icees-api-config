let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b170h_naphtha",
    identifiers = [
        "ENVO:00002983"
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