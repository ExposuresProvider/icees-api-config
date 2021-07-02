let meta = ../../common/meta.dhall
let ICEESAPIType = meta.ICEESAPIType
let Mapping = meta.Mapping
let NearestMapping = meta.NearestMapping
let generic_fhir_mapping = meta.generic_fhir_mapping
let environmental_mapping = meta.environmental_mapping
let avg = meta.avg
let max = meta.max
let prev_date = meta.prev_date
let integer = meta.integer
let range = meta.range
let string = meta.string
let enum = meta.enum
let number = meta.number
let cut = meta.cut
let qcut = meta.qcut
let range_bins = meta.range_bins
let no_binning = meta.no_binning
let replace = meta.replace
let suffix = meta.suffix
let no_rename = meta.no_rename
let nearest_point_distance = meta.nearest_point_distance
let nearest_point_attribute = meta.nearest_point_attribute
let nearest_feature_distance = meta.nearest_feature_distance
let nearest_feature_attribute = meta.nearest_feature_attribute
let no_identifiers = meta.no_identifiers
let no_categories = meta.no_categories
in {
    name = "ImmunodulationAnakinra",
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
    binning_strategies = [
        {
            method = range_bins {
                bins = [
                    0.0,
                    1.0,
                    2.0,
                    Infinity
                ],
                right = False,
                include_lowest = True,
                labels = [
                    "0",
                    "1",
                    ">1"
                ]
            },
            suffix = ""
        }
    ],
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
    ]
}