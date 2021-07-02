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
    name = "Death",
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
        "UMLS:C1306577",
        "NCIT:C53787",
        "NCIT:C93546",
        "NCIT:C28554",
        "NCIT:C81239",
        "UMLS:C0038644",
        "NCIT:C143396",
        "NCIT:C55284",
        "UMLS:C0277600",
        "UMLS:C0235106",
        "NCIT:C39616",
        "NCIT:C116340",
        "UMLS:C1836407",
        "UMLS:C0425020",
        "UMLS:C4505226",
        "NCIT:C81180",
        "UMLS:C0235196",
        "NCIT:C16897",
        "NCIT:C156427",
        "NCIT:C55285",
        "UMLS:C0549159",
        "NCIT:C93124",
        "UMLS:C0012684",
        "UMLS:C0421611",
        "UMLS:C3850139",
        "NCIT:C82549",
        "UMLS:C0277610",
        "UMLS:C0277607",
        "UMLS:C0521992",
        "NCIT:C143395",
        "UMLS:C0277608",
        "UMLS:C0877369",
        "UMLS:C3279901",
        "NCIT:C21115",
        "NCIT:C121972",
        "NCIT:C60811",
        "UMLS:C0424912",
        "UMLS:C5194451",
        "NCIT:C90351",
        "UMLS:C1855073",
        "UMLS:C4538786",
        "UMLS:C4538766",
        "UMLS:C0394019",
        "UMLS:C0277597",
        "NCIT:C90387",
        "UMLS:C0277633",
        "UMLS:C0277595",
        "UMLS:C1720406",
        "NCIT:C156428",
        "UMLS:C0277591",
        "NCIT:C143863",
        "NCIT:C90481",
        "NCIT:C157610",
        "NCIT:C55278",
        "UMLS:C1319165",
        "UMLS:C0277602",
        "UMLS:C3839534",
        "NCIT:C82563",
        "UMLS:C0436697",
        "UMLS:C1272076",
        "UMLS:C0436676",
        "NCIT:C117451",
        "UMLS:C0419427",
        "UMLS:C0277632",
        "UMLS:C0277599",
        "UMLS:C0405329",
        "UMLS:C3553446",
        "NCIT:C121303",
        "UMLS:C1636652",
        "UMLS:C1862972",
        "UMLS:C1301895",
        "UMLS:C4518516",
        "UMLS:C0425045",
        "UMLS:C0234555",
        "UMLS:C0239163",
        "UMLS:C0277618",
        "UMLS:C0162638",
        "UMLS:C0275516",
        "UMLS:C0277598",
        "UMLS:C1842717",
        "NCIT:C80397",
        "UMLS:C0438097",
        "NCIT:C55281",
        "UMLS:C1851438",
        "UMLS:C1850378",
        "NCIT:C114870",
        "UMLS:C3151698",
        "UMLS:C4014370",
        "UMLS:C3279037",
        "UMLS:C1861884",
        "UMLS:C2749558",
        "UMLS:C0158823",
        "NCIT:C111858",
        "UMLS:C1320392",
        "UMLS:C0557916",
        "UMLS:C4227381",
        "UMLS:C0877368",
        "UMLS:C0277644",
        "UMLS:C0277631",
        "NCIT:C99531",
        "UMLS:C0277645",
        "UMLS:C0405332",
        "UMLS:C1851437",
        "UMLS:C0270131",
        "UMLS:C0422806",
        "UMLS:C1837902",
        "NCIT:C82465",
        "UMLS:C0436678",
        "UMLS:C1838682",
        "UMLS:C0851487",
        "UMLS:C0277639",
        "UMLS:C3276444",
        "NCIT:C145813",
        "NCIT:C82466",
        "UMLS:C4227505",
        "UMLS:C0436677",
        "MESH:D053218",
        "UMLS:C4518518",
        "UMLS:C1850450",
        "UMLS:C0455454",
        "NCIT:C111859",
        "NCIT:C124643",
        "UMLS:C1689930",
        "UMLS:C1859841",
        "NCIT:C94695",
        "UMLS:C0684230",
        "UMLS:C4539925",
        "UMLS:C1859831",
        "NCIT:C116142",
        "UMLS:C0559317",
        "UMLS:C0277590",
        "NCIT:C124600",
        "UMLS:C2677476",
        "UMLS:C1844013",
        "UMLS:C0455456",
        "UMLS:C1287579",
        "NCIT:C54197",
        "NCIT:C146570",
        "UMLS:C1855495",
        "UMLS:C4229223",
        "UMLS:C4012201",
        "UMLS:C2712552",
        "UMLS:C0425034",
        "NCIT:C120592",
        "UMLS:C0277604"
    ]
}