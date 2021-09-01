let meta = ../../common/meta.dhall
let no_identifiers = meta.no_identifiers
let enum = meta.enum
in {
    name = "WHONAME_Implicated_Drug2",
    identifiers = no_identifiers,
    feature = {
        feature_type = enum [
            "Amoxicillin",
            "Telithromycin",
            "Cefazolin",
            "‘Sulfamethoxazole W/Trimethoprim’",
            "‘Cefalexin’",
            "‘Azithromycin’",
            "‘Amoxicillin W/Clavulanic Acid’",
            "‘Levofloxacin’",
            "‘Penicillin Nos’",
            "‘Nitrofurantoin’",
            "‘Cefepime’",
            "‘Cefuroxime’",
            "‘Cefdinir’",
            "‘Ceftriaxone’",
            "‘Hydroxycut - Ephedra Free’",
            "‘Unspecified Herbal’",
            "‘Other’"
        ],
        categories = [
            "biolink:ChemicalEntity",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    }
}