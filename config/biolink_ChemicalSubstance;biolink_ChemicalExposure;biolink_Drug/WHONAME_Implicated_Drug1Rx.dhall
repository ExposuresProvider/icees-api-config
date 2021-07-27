let meta = ../../common/meta.dhall
let no_identifiers = meta.no_identifiers
let enum = meta.enum
in {
    name = "WHONAME_Implicated_Drug1Rx",
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