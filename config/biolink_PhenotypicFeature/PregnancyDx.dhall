let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "PregnancyDx",
    identifiers = [
        "SNOMED:289908002",
        "SNOMED:199312002",
        "SNOMED:424525001",
        "SNOMED:87527008",
        "SNOMED:111208003",
        "SNOMED:271903000",
        "SNOMED:74036000",
        "SNOMED:65147003",
        "SNOMED:127368005",
        "SNOMED:127364007",
        "SNOMED:69532007",
        "SNOMED:127373004",
        "SNOMED:44782008",
        "SNOMED:79586000",
        "SNOMED:127366009",
        "SNOMED:127372009",
        "SNOMED:127369002",
        "SNOMED:235003004",
        "SNOMED:276367008",
        "SNOMED:237241002",
        "SNOMED:127367000",
        "SNOMED:135881001",
        "SNOMED:127365008",
        "SNOMED:127371002",
        "SNOMED:237244005",
        "SNOMED:72892002",
        "SNOMED:34801009",
        "SNOMED:9899009",
        "SNOMED:118185001",
        "SNOMED:3645005",
        "SNOMED:87605005",
        "SNOMED:289209003",
        "SNOMED:237240001",
        "SNOMED:198627000",
        "SNOMED:64254006",
        "SNOMED:424040008",
        "SNOMED:127370001",
        "SNOMED:191733007",
        "SNOMED:68737009",
        "SNOMED:169565003",
        "SNOMED:237239003",
        "SNOMED:11082009",
        "SNOMED:102874004",
        "SNOMED:239102001",
        "SNOMED:79290002",
        "SNOMED:109184000",
        "SNOMED:16356006",
        "SNOMED:239101008",
        "SNOMED:270471004",
        "SNOMED:31601007",
        "SNOMED:445086005",
        "SNOMED:275133001",
        "SNOMED:58532003",
        "SNOMED:82661006",
        "SNOMED:386216000",
        "SNOMED:47200007",
        "SNOMED:386638009",
        "SNOMED:102875003",
        "SNOMED:43990006",
        "SNOMED:274116002",
        "SNOMED:27342004",
        "SNOMED:83074005",
        "SNOMED:90968009",
        "SNOMED:77386006",
        "SNOMED:38720006",
        "SNOMED:237233002",
        "SNOMED:72301000119103",
        "SNOMED:15592002",
        "SNOMED:364320009",
        "SNOMED:710973002",
        "SNOMED:237242009",
        "SNOMED:60810003",
        "SNOMED:52651000119105",
        "SNOMED:14418008",
        "SNOMED:198626009",
        "SNOMED:364324000",
        "SNOMED:198624007",
        "SNOMED:364322001",
        "SNOMED:60000008",
        "SNOMED:15394000",
        "SNOMED:80997009",
        "SNOMED:94641000119109",
        "SNOMED:274119009",
        "SNOMED:405114003",
        "SNOMED:239103006",
        "SNOMED:167252002"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(V22)[.].*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(Z34)[.].*"
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