let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "MenopauseDx",
    identifiers = [
        "SNOMED:161712005",
        "SNOMED:289903006",
        "SNOMED:307429007",
        "SNOMED:289904000",
        "SNOMED:237123000",
        "SNOMED:309606002",
        "SNOMED:303111005",
        "SNOMED:20045006",
        "SNOMED:276477006",
        "SNOMED:371036001",
        "SNOMED:160398001",
        "SNOMED:373717006",
        "SNOMED:313207002",
        "SNOMED:160397006",
        "SNOMED:31351009",
        "SNOMED:268530007",
        "SNOMED:402804002",
        "SNOMED:170962000",
        "SNOMED:278064001",
        "SNOMED:76742009",
        "SNOMED:439421000",
        "SNOMED:237138004",
        "SNOMED:170961007",
        "SNOMED:170951000",
        "SNOMED:243875009",
        "SNOMED:278063007",
        "SNOMED:427956008",
        "SNOMED:170949004",
        "SNOMED:423478005",
        "SNOMED:170953002",
        "SNOMED:170950004",
        "SNOMED:735614005",
        "SNOMED:309605003",
        "SNOMED:464852003",
        "SNOMED:88424000",
        "SNOMED:106002000",
        "SNOMED:718881004"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(627)[.].*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(N95)[.].*"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    },
    binning_strategy = max_cutoff 2
}