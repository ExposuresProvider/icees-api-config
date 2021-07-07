let meta = ../../common/meta.dhall
let integer = meta.integer
let generic_fhir_mapping = meta.generic_fhir_mapping
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
        "UMLSCUI:C0428301",
        "NCIT:C55114",
        "UMLSCUI:C1557204",
        "NCIT:C55115",
        "UMLSCUI:C1557205",
        "NCIT:C55113",
        "UMLSCUI:C1557203",
        "NCIT:C55116",
        "UMLSCUI:C1557206",
        "NCIT:C55117",
        "UMLSCUI:C1557207",
        "NCIT:C78181",
        "UMLSCUIC0541802"
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