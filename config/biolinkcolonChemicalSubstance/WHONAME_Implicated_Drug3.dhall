let meta = ../../common/meta.dhall
let no_identifiers = meta.no_identifiers
let enum = meta.enum
in {
    name = "WHONAME_Implicated_Drug3",
    identifiers = no_identifiers,
    feature = {
        feature_type = enum [
            "Ivermectin",
            "Levofloxacin",
            "‘Ertapenem'",
            "Lecithin W/Protein",
            "Other"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    }
}