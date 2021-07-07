let meta = ../../common/meta.dhall
let integer = meta.integer
let generic_fhir_mapping = meta.generic_fhir_mapping
in {
    name = "HgbA1C",
    identifiers = [
        "NCIT:C122507",
        "UMLSCUI:C0239940",
        "NCIT:C64849",
        "UMLSCUI:C0202054",
        "SCTID:733829007",
        "SCTID:143080000",
        "SCTID:702945004",
        "SCTID:117346004",
        "SCTID:40402000",
        "SCTID:165678002",
        "SCTID:733830002",
        "SCTID:259690008",
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