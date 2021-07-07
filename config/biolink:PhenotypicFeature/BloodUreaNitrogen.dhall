let meta = ../../common/meta.dhall
let integer = meta.integer
let generic_fhir_mapping = meta.generic_fhir_mapping
in {
    name = "BloodUreaNitrogen",
    identifiers = [
        "SCTID:72341003",
        "LOINC:LP175635-4",
        "LOINC:LP71815-2",
        "LOINC:LP133825-2",
        "LOINC:LP14492-0",
        "SCTID:95971004",
        "RxNorm:7456",
        "NCIT:C61019",
        "UMLSCUI:C0005845",
        "NCIT:C1753",
        "UMLSCUI:C0600137",
        "NCIT:C122438",
        "UMLSCUI:C0151539"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "6299-2"
        }
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}