let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_s183_tobacco_smokeless",
    identifiers = [
        "NCIT:C105050",
        "UMLSCUI:C3641918"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalExposure",
            "biolink:ChemicalSubstance"
        ]
    }
}