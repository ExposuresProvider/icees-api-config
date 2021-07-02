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
    name = "BloodType",
    feature = {
        feature_type = enum [
            "A+ ",
            "A-",
            "B+",
            "B-",
            "AB+",
            "AB-",
            "O+",
            "O-"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    },
    identifiers = [
        "CHEBI:28574",
        "CHEBI:144476",
        "CHEBI:144837",
        "CHEBI:62340",
        "CHEBI:62454",
        "CHEBI:62485",
        "CHEBI:62486",
        "CHEBI:144422",
        "CHEBI:144822",
        "CHEBI:144494",
        "CHEBI:144818",
        "CHEBI:144442",
        "CHEBI:144479",
        "CHEBI:62673",
        "CHEBI:62674",
        "CHEBI:144466",
        "CHEBI:144491",
        "CHEBI:144573",
        "CHEBI:144574",
        "CHEBI:61012",
        "CHEBI:144478",
        "CHEBI:144839",
        "CHEBI:144840",
        "CHEBI:145136",
        "CHEBI:144423",
        "CHEBI:144553",
        "CHEBI:144826",
        "CHEBI:144827",
        "CHEBI:62677",
        "CHEBI:62679",
        "CHEBI:63242",
        "CHEBI:62332",
        "CHEBI:144820",
        "CHEBI:144821",
        "CHEBI:78280",
        "CHEBI:78284",
        "CHEBI:144496",
        "CHEBI:144570",
        "CHEBI:144572",
        "CHEBI:144724",
        "CHEBI:144910",
        "CHEBI:145140",
        "CHEBI:144448",
        "CHEBI:144477",
        "CHEBI:144480",
        "CHEBI:144838",
        "CHEBI:144841",
        "CHEBI:145134",
        "CHEBI:145137",
        "CHEBI:53651",
        "CHEBI:144639",
        "CHEBI:144648",
        "CHEBI:144722",
        "CHEBI:144825",
        "CHEBI:144828",
        "CHEBI:42088",
        "CHEBI:59296",
        "CHEBI:144468",
        "CHEBI:144493",
        "CHEBI:144819",
        "CHEBI:145138",
        "CHEBI:144495",
        "CHEBI:144768",
        "CHEBI:144911",
        "CHEBI:145141",
        "CHEBI:78289",
        "CHEBI:144443",
        "CHEBI:144563",
        "CHEBI:144564",
        "CHEBI:145135",
        "CHEBI:144678",
        "CHEBI:144467",
        "CHEBI:144492",
        "CHEBI:144725",
        "CHEBI:144726",
        "CHEBI:145139",
        "CHEBI:144769",
        "CHEBI:144562",
        "CHEBI:144640",
        "CHEBI:144641",
        "CHEBI:144650",
        "CHEBI:144651",
        "MONDO:0000602",
        "CHEBI:144653",
        "CHEBI:144770",
        "CHEBI:144727",
        "CHEBI:144649",
        "CHEBI:144652",
        "CHEBI:144679",
        "CHEBI:144680",
        "CHEBI:144681",
        "CHEBI:144682",
        "CHEBI:144655",
        "CHEBI:144656",
        "CHEBI:144654",
        "CHEBI:144657",
        "GO:1902262",
        "NCIT:C61009",
        "UMLSCUI:C2825086",
        "NCIT:C133243",
        "UMLSCUI:CL520980",
        "NCIT:C76246",
        "UMLSCUI:C0427620",
        "NCIT:C76247",
        "UMLSCUI:C0427623",
        "NCIT:C76249",
        "UMLSCUI:C0427625",
        "NCIT:C76248",
        "UMLSCUI:C0427624",
        "NCIT:C98843",
        "UMLSCUI:C0005844",
        "LOINC:LP31912-6",
        "LOINC:LP17847-2",
        "LOINC:LP31913-4",
        "LOINC:LP267232-9",
        "LOINC:LP128641-0",
        "LOINC:LP73575-0",
        "LOINC:LP71680-0",
        "LOINC:LP284834-1",
        "LOINC:LP284835-8",
        "LOINC:LP284836-6",
        "LOINC:LP284837-4",
        "LOINC:LP284838-2",
        "LOINC:LP284839-0",
        "LOINC:LP284840-8",
        "LOINC:LP284841-6",
        "LOINC:LP284842-4"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "34531-4"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "34532-2"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "881-3"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "14578-9"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "14907-0"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "884-7"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "34474-7"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "882-1"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "77397-8"
        },
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "88027-8"
        }
    ]
}