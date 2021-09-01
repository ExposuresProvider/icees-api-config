let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ObesityDx",
    identifiers = [
        "MONDO:0008300",
        "MONDO:0009763",
        "MONDO:0010961",
        "MONDO:0011122",
        "MONDO:0011419",
        "MONDO:0012335",
        "MONDO:0013267",
        "MONDO:0013483",
        "MONDO:0013991",
        "MONDO:0013992",
        "MONDO:0014309",
        "MONDO:0015825",
        "MONDO:0018244",
        "MONDO:0019115",
        "MONDO:0019506",
        "MONDO:0044272",
        "MONDO:0044283",
        "SNOMED:111036000",
        "SNOMED:190965006",
        "SNOMED:238132000",
        "SNOMED:238133005",
        "SNOMED:238134004",
        "SNOMED:238136002",
        "SNOMED:248311001",
        "SNOMED:248312008",
        "SNOMED:270486005",
        "SNOMED:290439001",
        "SNOMED:292464007",
        "SNOMED:294493008",
        "SNOMED:295509007",
        "SNOMED:296526005",
        "SNOMED:297500005",
        "SNOMED:298464002",
        "SNOMED:360566006",
        "SNOMED:363247006",
        "SNOMED:414438005",
        "SNOMED:414916001",
        "SNOMED:414918000",
        "SNOMED:414919008",
        "SNOMED:415530009",
        "SNOMED:444862003",
        "SNOMED:44772007",
        "SNOMED:5036006",
        "SNOMED:53146006",
        "SNOMED:722596001",
        "SNOMED:82793005",
        "SNOMED:83911000119104",
        "HP:0001513",
        "HP:0025499",
        "HP:0025500",
        "HP:0025501",
        "MONDO:0044283",
        "HP:0001513",
        "HP:0025499",
        "HP:0025500",
        "HP:0025501",
        "ICD9:278",
        "ICD10:E66.%(EXCEPTICD10:E66.3)",
        "NCIT:C3283",
        "UMLS:C0028754"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(278[.]).*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(E66.[^3]).*"
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
    binning_strategy = max_cutoff 2
}