let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let integer = meta.integer
in {
    name = "ALT",
    identifiers = [
        "CHEBI:63674",
        "LOINC:LP15333-5",
        "LOINC:LP307326-1",
        "LOINC:LP44699-4",
        "LOINC:LP45402-2",
        "LOINC:LP48132-2",
        "LOINC:LP65198-1",
        "LOINC:LP89684-2",
        "LOINC:LP89685-9",
        "SNOMED:56935002",
        "NCIT:C25293",
        "UMLS:C0376147",
        "NCIT:C64433",
        "UMLS:C0201836",
        "NCIT:C38507",
        "UMLS:C0001899",
        "NCIT:C143267",
        "UMLS:CL541630",
        "NCIT:C145734",
        "UMLS:CL543823",
        "NCIT:C38509",
        "UMLS:C2364022",
        "NCIT:C26948",
        "UMLS:C0151905"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "76625-3"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "77144-4"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "1742-6"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "1744-2"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "1743-4"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "44785-4"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "25302-1"
        }
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}