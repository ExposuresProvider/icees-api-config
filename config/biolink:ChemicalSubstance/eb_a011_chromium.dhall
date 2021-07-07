let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_a011_chromium",
    identifiers = [
        "LOINC:LP203246-6",
        "LOINC:81024-2",
        "MESH:D002857",
        "SCTID:700166004"
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