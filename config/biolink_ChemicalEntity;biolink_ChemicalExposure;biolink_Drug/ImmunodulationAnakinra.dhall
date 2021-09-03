let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ImmunodulationAnakinra",
    identifiers = [
        "NCIT:C38717",
        "UMLS:C0245109",
        "SNOMED:4751511000001100",
        "SNOMED:385549000",
        "SNOMED:395279009",
        "SNOMED:131443009",
        "SNOMED:434393005",
        "SNOMED:51917007",
        "SNOMED:395279009",
        "SNOMED:407911009",
        "SNOMED:385549000",
        "SNOMED:774605000",
        "SNOMED:784845004",
        "SNOMED:785406006",
        "SNOMED:786104007",
        "SNOMED:385550000",
        "SNOMED:395280007",
        "SNOMED:4751711000001105",
        "SNOMED:4748611000001106",
        "SNOMED:36107911000001107",
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
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalEntity",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    },
    binning_strategy = max_cutoff 2
}