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
    name = "ASMA",
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    },
    binning_strategies = [
        {
            method = no_binning,
            suffix = ""
        }
    ],
    identifiers = [
        "MESH:C519298",
        "PUBCHEM.COMPOUND:14318164",
        "PUBCHEM.COMPOUND:131752070",
        "MESH:C000606349",
        "MESH:C025915",
        "PUBCHEM.COMPOUND:12443231",
        "UMLS:C0428199",
        "PUBCHEM.COMPOUND:641588",
        "PUBCHEM.COMPOUND:20055812",
        "PUBCHEM.COMPOUND:165701",
        "PUBCHEM.COMPOUND:10741643",
        "PUBCHEM.COMPOUND:10790424",
        "PUBCHEM.COMPOUND:18726",
        "MESH:C000608031",
        "PUBCHEM.COMPOUND:11281682",
        "PUBCHEM.COMPOUND:101335817",
        "MESH:C082201",
        "PUBCHEM.COMPOUND:9888562",
        "PUBCHEM.COMPOUND:11165698",
        "PUBCHEM.COMPOUND:10574990",
        "PUBCHEM.COMPOUND:165283",
        "PUBCHEM.COMPOUND:10790423",
        "PUBCHEM.COMPOUND:9845209",
        "PUBCHEM.COMPOUND:71609159",
        "PUBCHEM.COMPOUND:11395690",
        "UMLS:C0014476",
        "PUBCHEM.COMPOUND:71609075",
        "MESH:C040566",
        "PUBCHEM.COMPOUND:101473381",
        "PUBCHEM.COMPOUND:442012",
        "MESH:D058626",
        "MESH:C048012",
        "MESH:C468516",
        "PUBCHEM.COMPOUND:56841986",
        "MESH:C035188",
        "MESH:D010955",
        "UMLS:C1532560",
        "MESH:C577975",
        "PUBCHEM.COMPOUND:100981288",
        "PUBCHEM.COMPOUND:78358511",
        "UMLS:C0085663",
        "PUBCHEM.COMPOUND:122395445",
        "MESH:C022403",
        "PUBCHEM.COMPOUND:101600179",
        "PUBCHEM.COMPOUND:101600178",
        "UMLS:C1851076",
        "MESH:C451619",
        "MESH:C012499",
        "MESH:C036563",
        "UMLS:C1319185",
        "PUBCHEM.COMPOUND:101021581",
        "PUBCHEM.COMPOUND:10917802",
        "MESH:C561749",
        "PUBCHEM.COMPOUND:16655",
        "MESH:C026080",
        "UMLS:C1335426",
        "UMLS:C0406416",
        "UMLS:C0043325",
        "PUBCHEM.COMPOUND:102337943",
        "PUBCHEM.COMPOUND:122395446",
        "MESH:D020842",
        "UMLS:C1279223",
        "MESH:C000626379",
        "MESH:C118173",
        "CHEBI:135490",
        "CHEBI:135553",
        "CHEBI:135421",
        "CHEBI:135601",
        "CHEBI:52567",
        "CHEBI:135362",
        "CHEBI:3581",
        "GO:0005886",
        "MONDO:0005615",
        "MONDO:0002615",
        "MONDO:0003568",
        "MONDO:0004959",
        "CHEBI:17810",
        "MONDO:0009693",
        "MONDO:0005867",
        "MONDO:0007007",
        "MONDO:0018689",
        "MONDO:0001807",
        "MONDO:0000432",
        "MONDO:0008691",
        "MONDO:0005715",
        "MONDO:0017347",
        "CHEBI:17476",
        "MONDO:0002756",
        "MONDO:0005697",
        "GO:0032060",
        "GO:0098590",
        "MONDO:0002754",
        "MONDO:0006922",
        "MONDO:0004948",
        "MONDO:0025159",
        "GO:0005887",
        "MONDO:0003009",
        "MONDO:0018328",
        "MONDO:0009776",
        "CHEBI:145180",
        "GO:0007009",
        "GO:0031226",
        "MONDO:0010008",
        "MONDO:0004819",
        "MONDO:0025303",
        "MONDO:0002755",
        "MONDO:0013575",
        "MONDO:0000981",
        "MONDO:0001262",
        "MONDO:0004769",
        "MONDO:0005157",
        "MONDO:0005235",
        "MONDO:0008317",
        "MONDO:0018312",
        "CHEBI:68581",
        "MONDO:0004816",
        "MONDO:0001263",
        "MONDO:0003056",
        "CHEBI:131604",
        "MONDO:0004817",
        "MONDO:0006933",
        "MONDO:0004815",
        "CHEBI:60186",
        "MONDO:0002099",
        "MONDO:0019467",
        "MONDO:0005989",
        "MONDO:0009457",
        "MONDO:0005118",
        "MONDO:0008232",
        "MONDO:0017227",
        "GO:1903729",
        "MONDO:0010604",
        "MONDO:0017287",
        "MONDO:0012897",
        "MONDO:0001471",
        "MONDO:0009882",
        "MONDO:0019754",
        "MONDO:0019377",
        "MONDO:0007926",
        "MONDO:0004416",
        "MONDO:0008568",
        "MONDO:0008919",
        "MONDO:0008326",
        "MONDO:0009125",
        "MONDO:0011561",
        "CHEBI:65001",
        "MONDO:0007272",
        "GO:0045260",
        "MONDO:0017364",
        "MONDO:0018621",
        "MONDO:0043275"
    ]
}