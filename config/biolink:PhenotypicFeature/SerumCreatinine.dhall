let meta = ../../common/meta.dhall
let integer = meta.integer
let generic_fhir_mapping = meta.generic_fhir_mapping
in {
    name = "SerumCreatinine",
    identifiers = [
        "LOINC:LP175654-5",
        "LOINC:LP112369-6",
        "LOINC:LP112370-4",
        "LOINC:LP71816-0",
        "LOINC:LP97771-7",
        "LOINC:LP133826-0",
        "LOINC:LP14355-9",
        "RxNorm:2913",
        "NCIT:C121106",
        "NCIT:C14784",
        "UMLSCUI:C4055609"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "77140-2"
        }
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}