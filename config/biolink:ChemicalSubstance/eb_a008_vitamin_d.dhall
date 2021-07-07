let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_a008_vitamin_d",
    identifiers = [
        "MESH:D014807",
        "LOINC:LP102730-1",
        "CHEBI:89324",
        "CHEBI:27300"
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