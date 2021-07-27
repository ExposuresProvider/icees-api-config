let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let integer = meta.integer
in {
    name = "pO2Arterial",
    identifiers = [
        "SCTID:144270002",
        "LOINC:LP15765-8",
        "LOINC:LP71270-0",
        "NCIT:C71251",
        "UMLSCUI:C0202155",
        "NCIT:C147417",
        "UMLSCUI:CL545320"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "19981-0"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "19980-2"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "19983-6"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "19982-8"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "11556-8"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "19988-5"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "19987-7"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "19986-9"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "19985-1"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "2703-7"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "2704-5"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "33437-5"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "14864-3"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "28648-4"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "28649-2"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "19211-2"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "2705-2"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "2706-0"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "3147-6"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "3148-4"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "3149-2"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "19984-4"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "19254-2"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "19255-9"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "19256-7"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "47716-6"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "49696-8"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "49697-6"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "19257-5"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "19258-3"
        }
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}