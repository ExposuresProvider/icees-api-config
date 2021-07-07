let meta = ../../common/meta.dhall
let enum = meta.enum
let no_identifiers = meta.no_identifiers
in {
    name = "WHONAME_Implicated_Drug1",
    identifiers = no_identifiers,
    feature = {
        feature_type = enum [
            "Amoxicillin W/Clavulanic Acid",
            "Other"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    }
}