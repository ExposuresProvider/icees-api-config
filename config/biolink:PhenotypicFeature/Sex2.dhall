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
    name = "Sex2",
    feature = {
        feature_type = enum [
            "Male",
            "Female"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    },
    binning_strategies = [
        {
            method = no_binning,
            suffix = ""
        }
    ],
    identifiers = [
        "NCIT:C28421",
        "UMLSCUI:C1522384",
        "NCIT:C93992",
        "UMLSCUI:C2986190",
        "SCTID:734000001",
        "UMLS:C0009990",
        "MESH:C110500",
        "PUBCHEM.COMPOUND:173328",
        "NCIT:C155696",
        "MESH:C078576",
        "UMLS:C0019898",
        "NCIT:C158346",
        "NCIT:C119949",
        "UMLS:C2129310",
        "UMLS:C0542460",
        "UMLS:C1963764",
        "UMLS:C0008062",
        "NCIT:C154419",
        "UMLS:C0233075",
        "UMLS:C0556472",
        "NCIT:C46117",
        "PUBCHEM.COMPOUND:78254",
        "PUBCHEM.COMPOUND:13062899",
        "PUBCHEM.COMPOUND:635212",
        "UMLS:C1534691",
        "CHEBI:59700",
        "PUBCHEM.COMPOUND:11340899",
        "UMLS:C0036039",
        "UMLS:C0233895",
        "UMLS:C0555061",
        "UMLS:C0556459",
        "UMLS:C0424400",
        "PUBCHEM.COMPOUND:5281698",
        "PUBCHEM.COMPOUND:129629138",
        "PUBCHEM.COMPOUND:129722326",
        "UMLS:C0234001",
        "UMLS:C0522205",
        "UMLS:C0424412",
        "UMLS:C3898830",
        "UMLS:C4038961",
        "UMLS:C1833064",
        "UMLS:C1314759",
        "UMLS:C0425722",
        "MESH:D012724",
        "PUBCHEM.COMPOUND:137554919",
        "UMLS:C0342573",
        "UMLS:C0417862",
        "PUBCHEM.COMPOUND:135565527",
        "UMLS:C0241028",
        "UMLS:C3838950",
        "UMLS:C0233921",
        "UMLS:C1415621",
        "UMLS:C0521866",
        "UMLS:C0233891",
        "UMLS:C0558138",
        "UMLS:C0015957",
        "UMLS:C0270528",
        "UMLS:C4478440",
        "UMLS:C0562966",
        "UMLS:C0851831",
        "UMLS:C0424403",
        "UMLS:C0234019",
        "MESH:C049384",
        "UMLS:C0234020",
        "UMLS:C0278457",
        "UMLS:C0233949",
        "UMLS:C0525047",
        "UMLS:C0233997",
        "UMLS:C0558124",
        "NCIT:C150735",
        "UMLS:C0425724",
        "UMLS:C0454551",
        "UMLS:C0234021",
        "UMLS:C0236860",
        "UMLS:C0234002",
        "OMIM:MTHU028312",
        "UMLS:C0233900",
        "UMLS:C0233955",
        "UMLS:C0016724",
        "NCIT:C46120",
        "UMLS:C4520512",
        "NCIT:C129472",
        "UMLS:C1740790",
        "UMLS:C2919760",
        "CHEBI:59701",
        "CHEBI:59702",
        "UMLS:C0270508",
        "UMLS:C0277563",
        "NCIT:C132221",
        "UMLS:C0277730",
        "UMLS:C1291723",
        "UMLS:C2981158",
        "UMLS:C0474421",
        "UMLS:C0556635",
        "UMLS:C0233922",
        "UMLS:C0421467",
        "UMLS:C0036910",
        "OMIM:617480",
        "UMLS:C0573740",
        "UMLS:C2748896",
        "UMLS:C0233994",
        "UMLS:C0562557",
        "UMLS:C0460128",
        "UMLS:C0423988",
        "UMLS:C4520541",
        "PUBCHEM.COMPOUND:129695102",
        "PUBCHEM.COMPOUND:129860980",
        "PUBCHEM.COMPOUND:129675250",
        "UMLS:C0079588",
        "UMLS:C0036868",
        "UMLS:C0349260",
        "UMLS:C0020594",
        "UMLS:C0002761",
        "NCIT:C35932",
        "UMLS:C0233877"
    ]
}