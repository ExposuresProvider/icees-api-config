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
    name = "PulmonaryDisease",
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:Disease",
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
        "UMLS:C0455540",
        "UMLS:C0034087",
        "NCIT:C143793",
        "UMLS:C1096000",
        "UMLS:C0264502",
        "UMLS:C0155671",
        "OMIM:MTHU018179",
        "UMLS:C0178272",
        "UMLS:C0340118",
        "NCIT:C145573",
        "NCIT:C144951",
        "NCIT:C146511",
        "NCIT:C144359",
        "NCIT:C146076",
        "UMLS:C0264525",
        "UMLS:C1335019",
        "UMLS:C0340135",
        "NCIT:C113595",
        "UMLS:C0340136",
        "UMLS:C0340115",
        "UMLS:C0275705",
        "UMLS:C0264933",
        "UMLS:C4313324",
        "UMLS:C0272140",
        "UMLS:C0020542",
        "UMLS:C1306063",
        "UMLS:C0264784",
        "UMLS:C0730604",
        "UMLS:C3280945",
        "UMLS:C0730607",
        "UMLS:C0730605",
        "UMLS:C3806336",
        "UMLS:C1277261",
        "UMLS:C3550686",
        "UMLS:C3532326",
        "UMLS:C3887084",
        "UMLS:C1303174",
        "UMLS:C0740304",
        "UMLS:C1272095",
        "UMLS:C2750273",
        "UMLS:C0340848",
        "UMLS:C3698230",
        "UMLS:C1867043",
        "UMLS:C4038578",
        "UMLS:C1847014",
        "UMLS:C1319326",
        "UMLS:C0340044",
        "UMLS:C0340551",
        "UMLS:C0155883",
        "UMLS:C3697589",
        "UMLS:C3696884",
        "UMLS:C1532394",
        "UMLS:C3698354",
        "UMLS:C2675760",
        "UMLS:C0348818",
        "UMLS:C4518785",
        "UMLS:C3697116",
        "MONDO:0005275",
        "MONDO:0003628",
        "MONDO:0004596",
        "MONDO:0005766",
        "MONDO:0015243",
        "MONDO:0015925",
        "MONDO:0022736",
        "MONDO:0009937",
        "MONDO:0009971",
        "MONDO:0003627",
        "MONDO:0011751",
        "MONDO:0003506",
        "MONDO:0005002",
        "MONDO:0020713",
        "MONDO:0009329",
        "MONDO:0017157",
        "MONDO:0013881",
        "SCTID:171230000",
        "SCTID:313299006",
        "SCTID:702839006",
        "LOINC:LA28200-6",
        "LOINC:LA27422-7",
        "LOINC:LA27872-3",
        "CPT:1015F",
        "CPT:1026F",
        "CPT:3023F",
        "CPT:4025F",
        "CPT:81554",
        "CPT:82103",
        "CPT:82104",
        "CPT:94010",
        "ICD9:466.%",
        "ICD9:491.%",
        "ICD9:493.%",
        "ICD10:I21.%",
        "ICD10:I27.%",
        "ICD10:J44.%",
        "ICD10:J84.%",
        "ICD10:J98.%"
    ]
}