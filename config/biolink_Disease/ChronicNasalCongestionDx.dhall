let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ChronicNasalCongestionDx",
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = False,
            system_is_regex = False,
            system = "https://browser.ihtsdotools.org",
            code = "SCTID: 68235000"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Disease"
        ]
    },
    binning_strategy = max_cutoff 2,
    identifiers = [
        "NCIT:C78500",
        "UMLS:C0027424",
        "NCIT:C143698",
        "NCIT:C144284",
        "NCIT:C144860",
        "SNOMED:232210005",
        "SNOMED:162380009",
        "SNOMED:68235000",
        "LOINC:LA9263-0"
    ]
}