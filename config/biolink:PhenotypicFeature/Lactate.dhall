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
    name = "Lactate",
    feature = {
        feature_type = integer,
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
        "CHEBI:24996",
        "CHEBI:24997",
        "CHEBI:16004",
        "CHEBI:16651",
        "CHEBI:88526",
        "CHEBI:17282",
        "CHEBI:78321",
        "CHEBI:8100",
        "CHEBI:16444",
        "CHEBI:83219",
        "CHEBI:83221",
        "CHEBI:57774",
        "CHEBI:87534",
        "CHEBI:135165",
        "CHEBI:74611",
        "CHEBI:83222",
        "CHEBI:31196",
        "CHEBI:34536",
        "CHEBI:45013",
        "CHEBI:24773",
        "CHEBI:27487",
        "CHEBI:73641",
        "CHEBI:78319",
        "CHEBI:78322",
        "CHEBI:32978",
        "CHEBI:34850",
        "CHEBI:53409",
        "GO:0019249",
        "CHEBI:18409",
        "CHEBI:27441",
        "CHEBI:75228",
        "CHEBI:58738",
        "CHEBI:61166",
        "CHEBI:61289",
        "CHEBI:11009",
        "CHEBI:135032",
        "CHEBI:140722",
        "CHEBI:7982",
        "CHEBI:8397",
        "CHEBI:31172",
        "CHEBI:48291",
        "CHEBI:58476",
        "CHEBI:17943",
        "CHEBI:58737",
        "CHEBI:61287",
        "CHEBI:78323",
        "CHEBI:59433",
        "CHEBI:59906",
        "GO:0019172",
        "CHEBI:27524",
        "CHEBI:36659",
        "CHEBI:32896",
        "CHEBI:55529",
        "MONDO:0006040",
        "CHEBI:16373",
        "CHEBI:57752",
        "CHEBI:15597",
        "CHEBI:10980",
        "CHEBI:17807",
        "CHEBI:22180",
        "MONDO:0016527",
        "CHEBI:58279",
        "MONDO:0013047",
        "MONDO:0013587",
        "CHEBI:71492",
        "CHEBI:16122",
        "CHEBI:57647",
        "MONDO:0009585",
        "MONDO:0009501",
        "CHEBI:58298",
        "SCTID:83036002",
        "RxNorm:114202",
        "LOINC:LP15686-6",
        "LOINC:LP15033-1",
        "LOINC:LP286333-2",
        "LOINC:LP15688-2",
        "NCIT:C79450",
        "UMLSCUI:C0202115",
        "NCIT:C129425",
        "NCIT:C76926",
        "UMLSCUI:C0064582"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "59032-3"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "30242-2"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "51829-0"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "30241-4"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "29246-6"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "27941-4"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "14118-4"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "35245-0"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "29875-2"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "34323-6"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "32693-4"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "19239-3"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "75366-5"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "55932-8"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "19240-1"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "14165-5"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "55931-0"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "32132-3"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "32133-1"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "34324-4"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "74896-2"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "15078-9"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "57365-9"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "57357-6"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "59011-7"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "59012-5"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "27946-3"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "57364-2"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "57356-8"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "59005-9"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "57360-0"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "27955-4"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "57358-4"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "57362-6"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "59013-3"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "27961-2"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "57359-2"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "57361-8"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "59006-7"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "57728-8"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "27949-7"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "57363-4"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "59007-5"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "57729-6"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "59004-2"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "27976-0"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "68911-7"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "59849-0"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "51428-1"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "57366-7"
        }
    ]
}