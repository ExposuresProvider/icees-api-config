let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
in {
    name = "ProstateCancerDx",
    identifiers = [
        "SCTID:254900004",
        "SCTID:399068003",
        "SCTID:715412008",
        "SCTID:315268008",
        "SCTID:314994000",
        "SCTID:92691004",
        "SCTID:720007002",
        "SCTID:94503003",
        "SCTID:720008007",
        "SCTID:414205003",
        "SCTID:722103009",
        "SCTID:427492003",
        "SCTID:712849003",
        "SCTID:31011000119107",
        "SCTID:712837004",
        "SCTID:609102007",
        "SCTID:698470001",
        "SCTID:722081007",
        "SCTID:254381008",
        "SCTID:421411003",
        "SCTID:406077007",
        "SCTID:421714007",
        "SCTID:406076003"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(185)[.].*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(C61)[.].*"
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