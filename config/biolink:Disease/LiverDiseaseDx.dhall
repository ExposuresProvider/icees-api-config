let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "LiverDiseaseDx",
    identifiers = [
        "MONDO:000515",
        "MONDO:0009220",
        "MONDO:0043693",
        "MONDO:0000447",
        "MONDO:0008265",
        "MONDO:0016264",
        "MONDO:0004721",
        "MONDO:0011199",
        "MONDO:0009868",
        "NCIT:C113609",
        "UMLSCUI:C0341439",
        "NCIT:C3196",
        "UMLSCUIC0023895",
        "NCIT:C82833",
        "UMLSCUI:C0158683",
        "NCIT:C82996",
        "UMLSCUI:C2826616",
        "NCIT:C3959",
        "UMLSCUI:C0267792",
        "LOINC:LA25810-5",
        "SCTID:235890007",
        "SCTID:328383001"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm*",
            code = "K7[0-7]([.].*)?"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    },
    binning_strategy = max_cutoff 2
}