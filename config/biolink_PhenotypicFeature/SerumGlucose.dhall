let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let integer = meta.integer
in {
    name = "SerumGlucose",
    identifiers = [
        "SCTID:1010611000000107",
        "SCTID:144323001",
        "SCTID:313631001",
        "SCTID:313810002",
        "SCTID:313629005",
        "SCTID:313630000",
        "SCTID:313698005",
        "NCIT:C61027",
        "UMLS:C0202041",
        "NCIT:C55174",
        "UMLS:C1559925",
        "NCIT:C55175",
        "UMLS:C1559926"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "72650-5"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "72649-7"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "72651-3"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "72648-9"
        }
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}