let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
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
        "SNOMED:10742121000119104",
        "SNOMED:11641008",
        "SNOMED:11944003",
        "SNOMED:13151001",
        "SNOMED:18041002",
        "SNOMED:195967001",
        "SNOMED:195977004",
        "SNOMED:19849005",
        "SNOMED:225057002",
        "SNOMED:23315001",
        "SNOMED:233678006",
        "SNOMED:233679003",
        "SNOMED:233683003",
        "SNOMED:233687002",
        "SNOMED:233690008",
        "SNOMED:266361008",
        "SNOMED:281239006",
        "SNOMED:29422001",
        "SNOMED:304527002",
        "SNOMED:34015007",
        "SNOMED:367542003",
        "SNOMED:370218001",
        "SNOMED:370219009",
        "SNOMED:370220003",
        "SNOMED:370221004",
        "SNOMED:389145006",
        "SNOMED:404804003",
        "SNOMED:404806001",
        "SNOMED:405944004",
        "SNOMED:407674008",
        "SNOMED:409663006",
        "SNOMED:41553006",
        "SNOMED:418395004",
        "SNOMED:424643009",
        "SNOMED:427603009",
        "SNOMED:445427006",
        "SNOMED:56968009",
        "SNOMED:57607007",
        "SNOMED:61233003",
        "SNOMED:707444001",
        "SNOMED:708038006",
        "SNOMED:71892000",
        "SNOMED:72301000119103",
        "SNOMED:733858005",
        "SNOMED:85761009",
        "SNOMED:93432008",
        "HP:0002099",
        "HP:0002099",
        "ICD9:493%",
        "ICD10:J45.%",
        "NCIT:C28397",
        "UMLS:C0004096"
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
            "biolink:Disease"
        ]
    },
    binning_strategy = max_cutoff 2
}