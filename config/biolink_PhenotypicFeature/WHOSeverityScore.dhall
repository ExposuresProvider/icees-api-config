let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let range = meta.range
in {
    name = "WHOSeverityScore",
    identifiers = [
        "SCITD:278305009",
        "SCITD:273533008",
        "SCITD:1300631000000101",
        "SCITD:246112005",
        "SCITD:116694002",
        "SCITD:162465004",
        "SCITD:278689008",
        "MESH:D015601",
        "LOINC:LP173582-0",
        "LOINC:LP100002-7",
        "LOINC:LP186249-1",
        "LOINC:LP173587-9",
        "LOINC:59269-1",
        "LOINC:64008-6",
        "LOINC:38214-3",
        "LOINC:LA29474-6",
        "LOINC:LA29472-0",
        "LOINC:LA29473-8",
        "LOINC:LA25253-8",
        "LOINC:56840-2",
        "LOINC:LP34350-6",
        "LOINC:LP263552-4",
        "NCIT:C126668",
        "NCIT:C126676",
        "NCIT:C126669",
        "NCIT:C126675",
        "NCIT:C126674",
        "NCIT:C126667"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "https://browser.ihtsdotools.org",
            code = "SCTID: 278305009"
        }
    ],
    feature = {
        feature_type = range 0 10,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}