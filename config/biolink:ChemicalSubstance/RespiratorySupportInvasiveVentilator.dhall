let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "RespiratorySupportInvasiveVentilator",
    identifiers = [
        "LOINC:LA28889-6",
        "LOINC:LP263712-4",
        "LOINC:86851-3",
        "LOINC:LA30356-2"
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