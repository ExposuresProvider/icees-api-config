let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_q147_formaldehyde",
    identifiers = [
        "CHEBI:16842",
        "PUBCHEM:712",
        "MESH:D005557"
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