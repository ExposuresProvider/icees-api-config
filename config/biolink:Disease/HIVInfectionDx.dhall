let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
in {
    name = "HIVInfectionDx",
    identifiers = [
        "MONDO:0005109",
        "LOINC:LP74932-2",
        "SCTID:111880001",
        "LOINC:LP90007-3"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm*",
            code = "B2[0-4]([.].*)?"
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