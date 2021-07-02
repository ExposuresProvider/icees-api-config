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
let no_mapping = meta.no_mapping
let geoid_mapping = meta.geoid_mapping
in {
    name = "CardiovascularSupportMilrinone_gtt",
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
        "CHEBI:50693",
        "CHEBI:34850",
        "PUBCHEM:138109998",
        "PUBCHEM:13669855",
        "PUBCHEM:12960308",
        "PUBCHEM:12873360",
        "PUBCHEM:12799331",
        "PUBCHEM:172293",
        "PUBCHEM:4197",
        "NCIT:C61848",
        "UMLSCUI:C0128513",
        "NCIT:C29263",
        "UMLSCUI:C0600487",
        "RxNorm:52769",
        "RxNorm:1791839",
        "RxNorm:155120",
        "RxNorm:405198",
        "RxNorm:406097",
        "RxNorm:1164730",
        "RxNorm:377131",
        "RxNorm:576175",
        "RxNorm:329186",
        "RxNorm:345853",
        "RxNorm:702030",
        "RxNorm:362917",
        "RxNorm:545298",
        "RxNorm:1791838",
        "RxNorm:1791853",
        "RxNorm:545297",
        "RxNorm:807269",
        "RxNorm:362967",
        "RxNorm:347930",
        "RxNorm:1791841",
        "RxNorm:1791855",
        "SCTID:373441005",
        "SCTID:108481006",
        "SCTID:293524001",
        "SCTID:776794001",
        "SCTID:374513002",
        "SCTID:374512007",
        "LOINC:LP171621-8",
        "LOINC:LP165031-8",
        "LOINC:LP165032-6",
        "LOINC:LP165033-4"
    ]
}