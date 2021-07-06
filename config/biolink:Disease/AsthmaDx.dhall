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
    name = "AsthmaDx",
    identifiers = [
        "MONDO:0004766",
        "MONDO:0004979",
        "MONDO:0008834",
        "MONDO:0008835",
        "MONDO:0010940",
        "MONDO:0011805",
        "MONDO:0012067",
        "MONDO:0012379",
        "MONDO:0012577",
        "MONDO:0012607",
        "MONDO:0012666",
        "MONDO:0012771",
        "MONDO:0013180",
        "SCTID:10742121000119104",
        "SCTID:11641008",
        "SCTID:11944003",
        "SCTID:13151001",
        "SCTID:18041002",
        "SCTID:195967001",
        "SCTID:195977004",
        "SCTID:19849005",
        "SCTID:225057002",
        "SCTID:23315001",
        "SCTID:233678006",
        "SCTID:233679003",
        "SCTID:233683003",
        "SCTID:233687002",
        "SCTID:233690008",
        "SCTID:266361008",
        "SCTID:281239006",
        "SCTID:29422001",
        "SCTID:304527002",
        "SCTID:34015007",
        "SCTID:367542003",
        "SCTID:370218001",
        "SCTID:370219009",
        "SCTID:370220003",
        "SCTID:370221004",
        "SCTID:389145006",
        "SCTID:404804003",
        "SCTID:404806001",
        "SCTID:405944004",
        "SCTID:407674008",
        "SCTID:409663006",
        "SCTID:41553006",
        "SCTID:418395004",
        "SCTID:424643009",
        "SCTID:427603009",
        "SCTID:445427006",
        "SCTID:56968009",
        "SCTID:57607007",
        "SCTID:61233003",
        "SCTID:707444001",
        "SCTID:708038006",
        "SCTID:71892000",
        "SCTID:72301000119103",
        "SCTID:733858005",
        "SCTID:85761009",
        "SCTID:93432008",
        "HP:0002099",
        "HP:0002099",
        "ICD9:493%",
        "ICD10:J45.%",
        "NCIT:C28397",
        "UMLSCUI:C0004096"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(493[.]).*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(J45[.]).*"
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