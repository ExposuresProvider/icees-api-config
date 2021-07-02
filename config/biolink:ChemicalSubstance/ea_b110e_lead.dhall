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
    name = "ea_b110e_lead",
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
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
        "NCIT:C133964",
        "CHEBI:27889",
        "CHEBI:145698",
        "CHEBI:49807",
        "CHEBI:52455",
        "CHEBI:30180",
        "CHEBI:33418",
        "CHEBI:31767",
        "CHEBI:37187",
        "CHEBI:37184",
        "CHEBI:37186",
        "CHEBI:88212",
        "CHEBI:33585",
        "CHEBI:30182",
        "CHEBI:30183",
        "CHEBI:30184",
        "CHEBI:77245",
        "CHEBI:30181",
        "MONDO:0018019",
        "CHEBI:30558",
        "CHEBI:86257",
        "CHEBI:30565",
        "CHEBI:37192",
        "CHEBI:33586",
        "CHEBI:81881",
        "CHEBI:33112",
        "CHEBI:37185",
        "MONDO:0013000",
        "MONDO:0006649",
        "MONDO:0007882",
        "MONDO:0015306"
    ]
}