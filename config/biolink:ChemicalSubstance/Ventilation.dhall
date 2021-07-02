let meta = ../../common/meta.dhall
let ICEESAPIType = meta.ICEESAPIType
let Mapping = meta.Mapping
let NearestMapping = meta.NearestMapping
let generic_fhir_mapping = meta.generic_fhir_mapping
let environmental_mapping = meta.environmental_mapping
let avg = meta.avg
let max = meta.max
let prev_date = meta.prev_date
let integer = meta.integer
let range = meta.range
let string = meta.string
let enum = meta.enum
let number = meta.number
let cut = meta.cut
let qcut = meta.qcut
let range_bins = meta.range_bins
let no_binning = meta.no_binning
let replace = meta.replace
let suffix = meta.suffix
let no_rename = meta.no_rename
let nearest_point_distance = meta.nearest_point_distance
let nearest_point_attribute = meta.nearest_point_attribute
let nearest_feature_distance = meta.nearest_feature_distance
let nearest_feature_attribute = meta.nearest_feature_attribute
let no_identifiers = meta.no_identifiers
let no_categories = meta.no_categories
let no_mapping = meta.no_mapping
let geoid_mapping = meta.geoid_mapping
in {
    name = "Ventilation",
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
    binning_strategies = [
        {
            method = range_bins {
                bins = [
                    0.0,
                    1.0,
                    2.0,
                    Infinity
                ],
                right = False,
                include_lowest = True,
                labels = [
                    "0",
                    "1",
                    ">1"
                ]
            },
            suffix = ""
        }
    ],
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
    ]
}