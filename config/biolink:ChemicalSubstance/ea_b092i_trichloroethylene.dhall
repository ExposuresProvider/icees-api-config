let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b092i_trichloroethylene",
    identifiers = [
        "CHEBI:16602",
        "CHEBI:28888",
        "NCIT:C63923",
        "UMLSCUI:C0040905"
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