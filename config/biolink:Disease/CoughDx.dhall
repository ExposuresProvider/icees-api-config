let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "CoughDx",
    identifiers = [
        "MONDO:000149",
        "SCTID:11641008",
        "SCTID:208136003",
        "SCTID:27836007",
        "SCTID:409663006",
        "SCTID:418122003",
        "SCTID:445241004",
        "SCTID:46802002",
        "SCTID:59786004",
        "SCTID:90129003",
        "HP:0002105",
        "HP:0012735",
        "HP:0002105",
        "HP:0012735",
        "ICD9:786%",
        "ICD10R:05.%",
        "NCIT:C37935",
        "UMLSCUOI:C0010200"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(786[.]).*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(R05[.]).*"
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