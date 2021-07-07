let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b092g_perchloroethylene",
    identifiers = [
        "CHEBI:17300"
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