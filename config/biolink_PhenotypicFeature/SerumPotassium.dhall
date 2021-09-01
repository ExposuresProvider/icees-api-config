let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let integer = meta.integer
in {
    name = "SerumPotassium",
    identifiers = [
        "LOINC:LP175655-2",
        "LOINC:LP270132-6",
        "LOINC:LP232138-0",
        "LOINC:LP71817-8",
        "LOINC:LP97783-2",
        "LOINC:LP101318-6",
        "NCIT:C121105",
        "UMLS:C4055607",
        "NCIT:C61030",
        "UMLS:C0302353",
        "NCIT:C55215",
        "UMLS:C1559964",
        "NCIT:C55212",
        "UMLS:C1559961",
        "NCIT:C55211",
        "UMLS:C1559960",
        "NCIT:C55218",
        "UMLS:C1559967",
        "NCIT:C55210",
        "UMLS:C1559959",
        "NCIT:C55217",
        "UMLS:C1559966",
        "NCIT:C55216",
        "UMLS:C1559965",
        "NCIT:C55209",
        "UMLS:C1559958",
        "NCIT:C55213",
        "UMLS:C1559962",
        "NCIT:C55208",
        "UMLS:C1559957",
        "NCIT:C55214",
        "UMLS:C1559963"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "77142-8"
        }
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}