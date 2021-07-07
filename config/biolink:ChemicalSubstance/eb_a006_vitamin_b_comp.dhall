let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_a006_vitamin_b_comp",
    identifiers = [
        "CHEBI:17439"
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