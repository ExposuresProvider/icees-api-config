let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let integer = meta.integer
in {
    name = "SerumSodium",
    identifiers = [
        "SNOMED:166691007",
        "SNOMED:143995000",
        "SNOMED:1000661000000107",
        "SNOMED:166693005",
        "SNOMED:166692000",
        "SNOMED:143995000",
        "NCIT:C121104",
        "UMLS:C4055606",
        "NCIT:C61029",
        "UMLS:C0523891",
        "NCIT:C55230",
        "UMLS:C1559978",
        "NCIT:C55229",
        "UMLS:C1559977",
        "NCIT:C55235",
        "UMLS:C1559983",
        "NCIT:C55226",
        "UMLS:C1559974",
        "NCIT:C55234",
        "UMLS:C1559982",
        "NCIT:C55232",
        "UMLS:C1559980",
        "NCIT:C55233",
        "UMLS:C1559981",
        "NCIT:C55227",
        "UMLS:C1559975",
        "NCIT:C55228",
        "UMLS:C1559976",
        "NCIT:C55231",
        "UMLS:C1559979",
        "NCIT:C55225",
        "UMLS:C1559973"
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