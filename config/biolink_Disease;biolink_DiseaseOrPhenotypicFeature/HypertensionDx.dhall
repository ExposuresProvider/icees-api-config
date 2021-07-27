let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "HypertensionDx",
    identifiers = [
        "MONDO:0005044",
        "MONDO:0001134",
        "MONDO:0015512",
        "MONDO:0007781",
        "MONDO:0024664",
        "MONDO:0005081",
        "MONDO:0006810",
        "MONDO:0001105",
        "MONDO:0006947",
        "MONDO:0100078",
        "MONDO:0017154",
        "MONDO:0001784",
        "MONDO:0006846",
        "MONDO:0015924",
        "MONDO:0001151",
        "MONDO:0021969",
        "MONDO:0024533",
        "MONDO:0001999",
        "MONDO:0007211",
        "MONDO:0008585",
        "MONDO:0001133",
        "MONDO:0009468",
        "MONDO:0014897",
        "MONDO:0018835",
        "MONDO:0023530",
        "MONDO:0008347",
        "MONDO:0013781",
        "MONDO:0014134",
        "MONDO:0014135",
        "MONDO:0014136",
        "MONDO:0019162",
        "MONDO:0007080",
        "MONDO:0008344",
        "MONDO:0017147",
        "MONDO:0014875",
        "MONDO:0017148",
        "MONDO:0007772",
        "MONDO:0012458",
        "MONDO:0007357",
        "MONDO:0008071",
        "MONDO:0011384",
        "MONDO:0011440",
        "MONDO:0011815",
        "MONDO:0012109",
        "MONDO:0012459",
        "MONDO:0012587",
        "MONDO:0012599",
        "MONDO:0022430",
        "MONDO:0007329",
        "MONDO:0009934",
        "MONDO:0014151",
        "MONDO:0009935",
        "MONDO:0011517",
        "MONDO:0017157",
        "MONDO:0023124",
        "MONDO:0010003",
        "MONDO:0010776",
        "MONDO:0012930",
        "MONDO:0013458",
        "MONDO:0010880",
        "MONDO:0007917",
        "MONDO:0012032",
        "MONDO:0014352",
        "MONDO:0013024",
        "MONDO:0011243",
        "MONDO:0008169",
        "NCIT:C3117",
        "UMLSCUI:C0020538"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm*",
            code = "I1[0-5]([.].*)?"
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