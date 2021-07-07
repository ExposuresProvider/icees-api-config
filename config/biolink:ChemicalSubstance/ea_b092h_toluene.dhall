let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b092h_toluene",
    identifiers = [
        "CHEBI:17578"
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