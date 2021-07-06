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
    name = "BMI",
    identifiers = [
        "NCIT:C138901",
        "NCIT:C16358",
        "UMLS:C2675358",
        "UMLS:C1837869",
        "UMLS:C1847733",
        "UMLS:C1843899",
        "UMLS:C2676933",
        "UMLS:C2677162",
        "UMLS:C1837870",
        "UMLS:C1843898",
        "PUBCHEM.COMPOUND:134087",
        "MESH:C400328",
        "UMLS:C2676498",
        "UMLS:C1412497",
        "UMLS:C2751823",
        "UMLS:C2675914",
        "UMLS:C2678155",
        "UMLS:C3714940",
        "UMLS:C2675915",
        "UMLS:C2675659",
        "PUBCHEM.COMPOUND:11341966",
        "PUBCHEM.COMPOUND:135409279",
        "PUBCHEM.COMPOUND:190830",
        "PUBCHEM.COMPOUND:91035696",
        "NCIT:C138932",
        "NCIT:C138935",
        "PUBCHEM.COMPOUND:10578",
        "PUBCHEM.COMPOUND:11245926",
        "UMLS:C4229017",
        "PUBCHEM.COMPOUND:11674455",
        "PUBCHEM.COMPOUND:636427",
        "PUBCHEM.COMPOUND:129887587",
        "NCIT:C138934",
        "NCIT:C138933",
        "PUBCHEM.COMPOUND:11278308",
        "UMLS:C0587773",
        "UMLS:C0424671",
        "NCIT:C153368",
        "UMLS:C0582768",
        "UMLS:C0424672",
        "UMLS:C4721089",
        "NCIT:C138200",
        "PUBCHEM.COMPOUND:23271423",
        "PUBCHEM.COMPOUND:15336505",
        "PUBCHEM.COMPOUND:21578777",
        "PUBCHEM.COMPOUND:12572408",
        "PUBCHEM.COMPOUND:13695772",
        "PUBCHEM.COMPOUND:21605882",
        "PUBCHEM.COMPOUND:21771905",
        "PUBCHEM.COMPOUND:21669974",
        "PUBCHEM.COMPOUND:13679144",
        "MESH:C104737",
        "MESH:C104738",
        "UMLS:C1417063",
        "UMLS:C1421314",
        "NCIT:C92546",
        "UMLS:C1412222",
        "UMLS:C4225492",
        "UMLS:C5194522",
        "PUBCHEM.COMPOUND:138453780",
        "NCIT:C120377",
        "UMLS:C4015570",
        "UMLS:C3532116",
        "UMLS:C2681839",
        "UMLS:C4302622",
        "UMLS:C4230868",
        "UMLS:C3164809",
        "UMLS:C5194529",
        "UMLS:C4302409",
        "UMLS:C4230670",
        "UMLS:C1867135",
        "UMLS:C1853240",
        "PUBCHEM.COMPOUND:137699984",
        "MONDO:0010690",
        "CHEBI:19371",
        "CHEBI:61333",
        "CHEBI:61335",
        "CHEBI:31683",
        "MONDO:0020670"
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}