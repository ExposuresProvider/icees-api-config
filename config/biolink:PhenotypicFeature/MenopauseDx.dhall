let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
in {
    name = "MenopauseDx",
    identifiers = [
        "SCTID:161712005",
        "SCTID:289903006",
        "SCTID:307429007",
        "SCTID:289904000",
        "SCTID:237123000",
        "SCTID:309606002",
        "SCTID:303111005",
        "SCTID:20045006",
        "SCTID:276477006",
        "SCTID:371036001",
        "SCTID:160398001",
        "SCTID:373717006",
        "SCTID:313207002",
        "SCTID:160397006",
        "SCTID:31351009",
        "SCTID:268530007",
        "SCTID:402804002",
        "SCTID:170962000",
        "SCTID:278064001",
        "SCTID:76742009",
        "SCTID:439421000",
        "SCTID:237138004",
        "SCTID:170961007",
        "SCTID:170951000",
        "SCTID:243875009",
        "SCTID:278063007",
        "SCTID:427956008",
        "SCTID:170949004",
        "SCTID:423478005",
        "SCTID:170953002",
        "SCTID:170950004",
        "SCTID:735614005",
        "SCTID:309605003",
        "SCTID:464852003",
        "SCTID:88424000",
        "SCTID:106002000",
        "SCTID:718881004"
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
    }
}