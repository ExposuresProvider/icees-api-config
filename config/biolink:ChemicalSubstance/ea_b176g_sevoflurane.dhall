let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b176g_sevoflurane",
    identifiers = [
        "CHEBI:9130"
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