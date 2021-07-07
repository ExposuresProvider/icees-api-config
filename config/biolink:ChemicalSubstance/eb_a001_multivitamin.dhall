let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_a001_multivitamin",
    identifiers = [
        "LOINC:81950-8",
        "NCIT:C1654",
        "UMLSCUI:C0301532"
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