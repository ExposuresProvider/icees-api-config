let meta = ../../common/meta.dhall
let enum = meta.enum
let no_identifiers = meta.no_identifiers
in {
    name = "Implicated_Drug2_Assessment",
    identifiers = no_identifiers,
    feature = {
        feature_type = enum [
            "Possible 25-50%",
            "Probable 50-75%",
            "Highly likely 75-95%",
            "Definite Greater than 95%"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    }
}