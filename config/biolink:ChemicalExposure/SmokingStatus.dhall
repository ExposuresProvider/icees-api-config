let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "SmokingStatus",
    identifiers = [
        "NCIT:C1519386",
        "UMLSCUI:C1519386",
        "MONDO:0008575",
        "LOINC:LP114183-9",
        "LOINC:LP156992-2",
        "LOINC:63638-1",
        "LOINC:72166-2",
        "LOINC:LP111730-0",
        "LOINC:LP212149-1",
        "SCTID:766931000000106",
        "SCTID:390902009",
        "SCTID:390904005",
        "SCTID:365980008"
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