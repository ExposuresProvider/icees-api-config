let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b170g_turpentine",
    identifiers = [
        "NCIT:C63923"
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