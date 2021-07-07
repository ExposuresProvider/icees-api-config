let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_a005_vitamin_b12",
    identifiers = [
        "MESH:D014805",
        "LOINC:LP102723-6",
        "CHEBI:15982",
        "CHEBI:17439",
        "CHEBI:48568"
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