let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let integer = meta.integer
in {
    name = "BloodUreaNitrogen",
    identifiers = [
        "SNOMED:72341003",
        "LOINC:LP175635-4",
        "LOINC:LP71815-2",
        "LOINC:LP133825-2",
        "LOINC:LP14492-0",
        "SNOMED:95971004",
        "RxNorm:7456",
        "NCIT:C61019",
        "UMLS:C0005845",
        "NCIT:C1753",
        "UMLS:C0600137",
        "NCIT:C122438",
        "UMLS:C0151539"
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