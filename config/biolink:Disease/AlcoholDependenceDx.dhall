let meta = ../../common/meta.dhall
let enum = meta.enum
let generic_fhir_mapping = meta.generic_fhir_mapping
in {
    name = "AlcoholDependenceDx",
    identifiers = [
        "SCTID:66590003",
        "SCTID:713583005",
        "SCTID:273264006",
        "SCTID:713862009",
        "SCTID:714829008",
        "SCTID:273802002",
        "SCTID:10741871000119101",
        "SCTID:10755041000119100",
        "SCTID:273799006",
        "SCTID:288031000119105",
        "SCTID:443504004",
        "SCTID:191802004"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(303)[.].*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(F10)[.].*"
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