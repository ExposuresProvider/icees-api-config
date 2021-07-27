let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "VentilationRx",
    mapping = generic_fhir_mapping [
        {
            resource = "Procedure",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm*",
            code = "540945Z"
        },
        {
            resource = "Procedure",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm*",
            code = "540955Z"
        },
        {
            resource = "Procedure",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm*",
            code = "540935Z"
        },
        {
            resource = "Procedure",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm*",
            code = "5A1945Z"
        },
        {
            resource = "Procedure",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm*",
            code = "5A1955Z"
        },
        {
            resource = "Procedure",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm*",
            code = "5A1935Z"
        },
        {
            resource = "Procedure",
            code_is_regex = False,
            system_is_regex = False,
            system = "https://datadictionary.nhs.uk/supporting_information/opcs_classification_of_interventions_and_procedures.html",
            code = "OPCS4:E85.8"
        },
        {
            resource = "Procedure",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.ama-assn.org/go/cpt/",
            code = "1014859"
        },
        {
            resource = "Procedure",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.ama-assn.org/go/cpt/",
            code = "94656"
        },
        {
            resource = "Procedure",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.ama-assn.org/go/cpt/",
            code = "94003"
        },
        {
            resource = "Procedure",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.ama-assn.org/go/cpt/",
            code = "94002"
        },
        {
            resource = "Procedure",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.ama-assn.org/go/cpt/",
            code = "94657"
        },
        {
            resource = "Procedure",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.ama-assn.org/go/cpt/",
            code = "1015098"
        },
        {
            resource = "Procedure",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.ama-assn.org/go/cpt/",
            code = "4168F"
        }
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
    },
    binning_strategy = max_cutoff 2
}