let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "LateralityDefect_SitusInversusOrHeterotaxyDx",
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = False,
            system_is_regex = False,
            system = "https://browser.ihtsdotools.org",
            code = "SCTID: 43876007"
        },
        {
            resource = "Condition",
            code_is_regex = False,
            system_is_regex = False,
            system = "https://browser.ihtsdotools.org",
            code = "SCTID: 14821001"
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
    binning_strategy = max_cutoff 2,
    identifiers = [
        "MONDO:0010029",
        "MONDO:0022968",
        "MONDO:0015522",
        "MONDO:0015661",
        "MONDO:0019862",
        "MONDO:0018677",
        "MONDO:0010607",
        "MONDO:0010991",
        "MESH:D012857",
        "LOINC:LA19610-7",
        "SCITD:157025003",
        "SCITD:70978004",
        "SCITD:68716001",
        "SCITD:205766004",
        "NCIT:C87083",
        "SCITD:C0266642",
        "NCIT:C117273",
        "NCIT:C87121",
        "UMLSCUI:C0037221"
    ]
}