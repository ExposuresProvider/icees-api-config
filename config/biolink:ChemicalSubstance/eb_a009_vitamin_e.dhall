let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_a009_vitamin_e",
    identifiers = [
        "MESH:D014810",
        "LOINC:LP102732-7",
        "CHEBI:18145",
        "CHEBI:46430"
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