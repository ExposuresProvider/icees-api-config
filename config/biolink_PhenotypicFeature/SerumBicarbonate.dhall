let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let integer = meta.integer
in {
    name = "SerumBicarbonate",
    identifiers = [
        "SCTID:271239003",
        "SCTID:1000681000000103",
        "SCTID:166699009",
        "SCTID:166698001",
        "SCTID:143997008",
        "SCTID:166697006",
        "LOINC:LP386568-2",
        "LOINC:LP386569-0",
        "RxNorm:1546277",
        "RxNorm:OMOP331736",
        "RxNorm:OMOP999413",
        "RxNorm:OMOP2800104",
        "NCIT:C61022",
        "UMLS:C0428301",
        "NCIT:C55114",
        "UMLS:C1557204",
        "NCIT:C55115",
        "UMLS:C1557205",
        "NCIT:C55113",
        "UMLS:C1557203",
        "NCIT:C55116",
        "UMLS:C1557206",
        "NCIT:C55117",
        "UMLS:C1557207",
        "NCIT:C78181",
        "UMLS:C0541802"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "1963-8"
        }
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}