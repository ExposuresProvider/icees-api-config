let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_s185_smoke_indoors",
    identifiers = [
        "NCIT:C127108",
        "NCIT:C127106"
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