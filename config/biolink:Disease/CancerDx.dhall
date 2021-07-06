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
let nearest_point_distance = meta.nearest_point_distance
let nearest_point_attribute = meta.nearest_point_attribute
let nearest_feature_distance = meta.nearest_feature_distance
let nearest_feature_attribute = meta.nearest_feature_attribute
let no_identifiers = meta.no_identifiers
let no_categories = meta.no_categories
let no_mapping = meta.no_mapping
let geoid_mapping = meta.geoid_mapping
in {
    name = "CancerDx",
    identifiers = [
        "MONDO:0005070",
        "MONDO:0004992",
        "MONDO:0002236",
        "MONDO:0002714",
        "MONDO:0003277",
        "MONDO:0005507",
        "MONDO:0006834",
        "MONDO:0021333",
        "CHEBI:50903",
        "MONDO:0023644",
        "MONDO:0002898",
        "MONDO:0021117",
        "MONDO:0001879",
        "MONDO:0002129",
        "MONDO:0002658",
        "MONDO:0002659",
        "MONDO:0003199",
        "MONDO:0008903",
        "MONDO:0005138",
        "MONDO:0021310",
        "MONDO:0005059",
        "MONDO:0004721",
        "MONDO:0021063",
        "MONDO:0000955",
        "MONDO:0001325",
        "MONDO:0001340",
        "MONDO:0001657",
        "MONDO:0002032",
        "MONDO:0002132",
        "MONDO:0002158",
        "MONDO:0002334",
        "MONDO:0002367",
        "MONDO:0002691",
        "MONDO:0002889",
        "MONDO:0003505",
        "MONDO:0003544",
        "MONDO:0003736",
        "MONDO:0005515",
        "MONDO:0005575",
        "MONDO:0005814",
        "MONDO:0006029",
        "MONDO:0006360",
        "MONDO:0007256",
        "MONDO:0008170",
        "MONDO:0018531",
        "MONDO:0004539",
        "MONDO:0005206",
        "MONDO:0005215",
        "MONDO:0044937",
        "MONDO:0004989",
        "MONDO:0021163",
        "MONDO:0001402",
        "MONDO:0001528",
        "MONDO:0002033",
        "MONDO:0002352",
        "MONDO:0002586",
        "MONDO:0002715",
        "MONDO:0002974",
        "MONDO:0003072",
        "MONDO:0003274",
        "MONDO:0003363",
        "MONDO:0003802",
        "MONDO:0003950",
        "MONDO:0005447",
        "MONDO:0005966",
        "MONDO:0006294",
        "MONDO:0006481",
        "MONDO:0006519",
        "MONDO:0006998",
        "MONDO:0007254",
        "MONDO:0008627",
        "MONDO:0015867",
        "MONDO:0004631",
        "MONDO:0005131",
        "MONDO:0021313",
        "MONDO:0021337",
        "MONDO:0004987",
        "MONDO:0004950",
        "MONDO:0001056",
        "MONDO:0001061",
        "MONDO:0001187",
        "MONDO:0001378",
        "MONDO:0001407",
        "MONDO:0001653",
        "MONDO:0002351",
        "MONDO:0002355",
        "MONDO:0002650",
        "MONDO:0002817",
        "MONDO:0003184",
        "MONDO:0003273",
        "MONDO:0003319",
        "MONDO:0004192",
        "MONDO:0005517",
        "MONDO:0006815",
        "MONDO:0015075",
        "MONDO:0004700",
        "MONDO:0004986",
        "MONDO:0005140",
        "LOINC:LA10524-9",
        "LOINC:LP74584-1",
        "LOINC:LP7106-0",
        "SCTID:395099008",
        "LOINC:LA10549-6",
        "LOINC:LA14283-8",
        "LOINC:LA15684-6",
        "LOINC:LA10537-1",
        "LOINC:LA20360-6",
        "LOINC:LA15683-8",
        "LOINC:LA10548-8",
        "LOINC:LA10547-0",
        "LOINC:LA10541-3",
        "LOINC:LA15687-9",
        "LOINC:LA28289-9",
        "LOINC:LA10546-2",
        "LOINC:LA14284-6",
        "LOINC:LA15682-0",
        "LOINC:LA15689-5",
        "LOINC:LA15688-7",
        "LOINC:LA28290-7",
        "LOINC:LA10543-9",
        "LOINC:LA15690-3",
        "LOINC:LA10544-7"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm*",
            code = "C([0-8][0-9]|9[0-7])([.].*)?"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}