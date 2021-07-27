let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let integer = meta.integer
in {
    name = "SerumSodium",
    identifiers = [
        "SCTID:166691007",
        "SCTID:143995000",
        "SCTID:1000661000000107",
        "SCTID:166693005",
        "SCTID:166692000",
        "SCTID:143995000",
        "NCIT:C121104",
        "UMLSCUI:C4055606",
        "NCIT:C61029",
        "UMLSCUI:C0523891",
        "NCIT:C55230",
        "UMLSCUI:C1559978",
        "NCIT:C55229",
        "UMLSCUI:C1559977",
        "NCIT:C55235",
        "UMLSCUI:C1559983",
        "NCIT:C55226",
        "UMLSCUI:C1559974",
        "NCIT:C55234",
        "UMLSCUI:C1559982",
        "NCIT:C55232",
        "UMLSCUI:C1559980",
        "NCIT:C55233",
        "UMLSCUI:C1559981",
        "NCIT:C55227",
        "UMLSCUI:C1559975",
        "NCIT:C55228",
        "UMLSCUI:C1559976",
        "NCIT:C55231",
        "UMLSCUI:C1559979",
        "NCIT:C55225",
        "UMLSCUI:C1559973"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "77139-4"
        }
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}