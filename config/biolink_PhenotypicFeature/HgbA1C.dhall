let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let integer = meta.integer
in {
    name = "HgbA1C",
    identifiers = [
        "NCIT:C122507",
        "UMLS:C0239940",
        "NCIT:C64849",
        "UMLS:C0202054",
        "SNOMED:733829007",
        "SNOMED:143080000",
        "SNOMED:702945004",
        "SNOMED:117346004",
        "SNOMED:40402000",
        "SNOMED:165678002",
        "SNOMED:733830002",
        "SNOMED:259690008",
        "LOINC:LP6264-8",
        "LOINC:LG48562-9",
        "LOINC:27353-2",
        "LOINC:53553-4",
        "LOINC:55454-3",
        "LOINC:41995-2",
        "LOINC:71875-9",
        "LOINC:4548-4",
        "LOINC:86910-7"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "41995-2"
        }
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}