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
    name = "Pregnancy",
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = no_categories
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
        "SCTID:289908002",
        "SCTID:199312002",
        "SCTID:424525001",
        "SCTID:87527008",
        "SCTID:111208003",
        "SCTID:271903000",
        "SCTID:74036000",
        "SCTID:65147003",
        "SCTID:127368005",
        "SCTID:127364007",
        "SCTID:69532007",
        "SCTID:127373004",
        "SCTID:44782008",
        "SCTID:79586000",
        "SCTID:127366009",
        "SCTID:127372009",
        "SCTID:127369002",
        "SCTID:235003004",
        "SCTID:276367008",
        "SCTID:237241002",
        "SCTID:127367000",
        "SCTID:135881001",
        "SCTID:127365008",
        "SCTID:127371002",
        "SCTID:237244005",
        "SCTID:72892002",
        "SCTID:34801009",
        "SCTID:9899009",
        "SCTID:118185001",
        "SCTID:3645005",
        "SCTID:87605005",
        "SCTID:289209003",
        "SCTID:237240001",
        "SCTID:198627000",
        "SCTID:64254006",
        "SCTID:424040008",
        "SCTID:127370001",
        "SCTID:191733007",
        "SCTID:68737009",
        "SCTID:169565003",
        "SCTID:237239003",
        "SCTID:11082009",
        "SCTID:102874004",
        "SCTID:239102001",
        "SCTID:79290002",
        "SCTID:109184000",
        "SCTID:16356006",
        "SCTID:239101008",
        "SCTID:270471004",
        "SCTID:31601007",
        "SCTID:445086005",
        "SCTID:275133001",
        "SCTID:58532003",
        "SCTID:82661006",
        "SCTID:386216000",
        "SCTID:47200007",
        "SCTID:386638009",
        "SCTID:102875003",
        "SCTID:43990006",
        "SCTID:274116002",
        "SCTID:27342004",
        "SCTID:83074005",
        "SCTID:90968009",
        "SCTID:77386006",
        "SCTID:38720006",
        "SCTID:237233002",
        "SCTID:72301000119103",
        "SCTID:15592002",
        "SCTID:364320009",
        "SCTID:710973002",
        "SCTID:237242009",
        "SCTID:60810003",
        "SCTID:52651000119105",
        "SCTID:14418008",
        "SCTID:198626009",
        "SCTID:364324000",
        "SCTID:198624007",
        "SCTID:364322001",
        "SCTID:60000008",
        "SCTID:15394000",
        "SCTID:80997009",
        "SCTID:94641000119109",
        "SCTID:274119009",
        "SCTID:405114003",
        "SCTID:239103006",
        "SCTID:167252002"
    ]
}