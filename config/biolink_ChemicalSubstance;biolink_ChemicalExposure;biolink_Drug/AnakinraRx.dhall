let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "AnakinraRx",
    identifiers = [
        "NCIT:C38717",
        "UMLSCUI:C0245109",
        "SCITD:4751511000001100",
        "SCITD:385549000",
        "SCITD:395279009",
        "SCITD:131443009",
        "SCITD:434393005",
        "SCITD:51917007",
        "SCITD:395279009",
        "SCITD:407911009",
        "SCITD:385549000",
        "SCITD:774605000",
        "SCITD:784845004",
        "SCITD:785406006",
        "SCITD:786104007",
        "SCITD:385550000",
        "SCITD:395280007",
        "SCITD:4751711000001105",
        "SCITD:4748611000001106",
        "SCITD:36107911000001107",
        "LOINC:LP191906-9",
        "LOINC:LP200868-0",
        "LOINC:LP390570-2",
        "LOINC:78792-9",
        "RxNorm:72435",
        "RxNorm:582666",
        "RxNorm:582667",
        "RxNorm:727711",
        "RxNorm:727714",
        "RxNorm:727715",
        "RxNorm:727712",
        "RxNorm:351141",
        "RxNorm:352056",
        "RxNorm:358779",
        "RxNorm:575806",
        "RxNorm:727709",
        "RxNorm:727710",
        "RxNorm:1157701",
        "RxNorm:378321",
        "RxNorm:402706",
        "RxNorm:582669",
        "RxNorm:582668",
        "RxNorm:727708",
        "RxNorm:727713",
        "RxNorm:1359602",
        "RxNorm:1359724",
        "RxNorm:1359793"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "72435"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    },
    binning_strategy = max_cutoff 2
}