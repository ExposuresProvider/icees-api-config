let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_a004_vitamin_b6",
    identifiers = [
        "MESH:D025101",
        "LOINC:LP102725-1",
        "CHEBI:16709"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    }
}