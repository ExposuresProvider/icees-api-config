let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_a003_vitamin_b3",
    identifiers = [
        "CHEBI:15940"
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