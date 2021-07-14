let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ChronicObstructivePulmonaryDiseaseDx",
    identifiers = [
        "MONDO:0011751",
        "MONDO:0009937",
        "MONDO:0005002",
        "MONDO:0023540",
        "MONDO:0010220",
        "SCTID:171230000",
        "SCTID:313299006",
        "SCTID:702839006",
        "LOINC:LA28200-6",
        "LOINC:LA27422-7",
        "LOINC:LA27872-3"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm*",
            code = "J44*"
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