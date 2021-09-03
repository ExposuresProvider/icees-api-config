let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "CysticFibrosisDx",
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = False,
            system_is_regex = False,
            system = "https://browser.ihtsdotools.org",
            code = "SCTID: 190905008"
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
        "NCIT:C2975",
        "UMLS:C0010674",
        "NCIT:C121562",
        "UMLS:C1135342",
        "NCIT:C103233",
        "UMLS:C0546982",
        "LOINC:LA22202-8",
        "LOINC:LP56779-9",
        "LOINC:LA25637-2",
        "LOINC:LP258951-5",
        "LOINC:LP96704-9",
        "MESH:D003550",
        "SNOMED:190905008",
        "SNOMED:154767009",
        "SNOMED:85809002",
        "SNOMED:725052002",
        "SNOMED:762270003",
        "SNOMED:762269004",
        "SNOMED:762271004"
    ]
}