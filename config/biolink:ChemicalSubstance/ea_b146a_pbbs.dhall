let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b146a_pbbs",
    identifiers = [
        "UMLSCUI:C0032441",
        "NCIT:C44436"
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