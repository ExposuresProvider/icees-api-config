let meta = ../../common/meta.dhall
let enum = meta.enum
let generic_fhir_mapping = meta.generic_fhir_mapping
in {
    name = "PCDDx",
    identifiers = [
        "MONDO:0016575",
        "MONDO:0033204",
        "MONDO:0009477",
        "MONDO:0009484",
        "MONDO:0011718",
        "MONDO:0012085",
        "MONDO:0012087",
        "MONDO:0012088",
        "MONDO:0012571",
        "MONDO:0012748",
        "MONDO:0012844",
        "MONDO:0012906",
        "MONDO:0012918",
        "MONDO:0012978",
        "MONDO:0012979",
        "MONDO:0013174",
        "MONDO:0013434",
        "MONDO:0013435",
        "MONDO:0013525",
        "MONDO:0013854",
        "MONDO:0013940",
        "MONDO:0013979",
        "MONDO:0014030",
        "MONDO:0014123",
        "MONDO:0014192",
        "MONDO:0014193",
        "MONDO:0014202",
        "MONDO:0014203",
        "MONDO:0014211",
        "MONDO:0014215",
        "MONDO:0014216",
        "MONDO:0014378",
        "MONDO:0014465",
        "MONDO:0014657",
        "MONDO:0014750",
        "MONDO:0014909",
        "MONDO:0014910",
        "MONDO:0010517",
        "MONDO:0054843",
        "MESH:D002925",
        "MESH:D020820",
        "MESH:D001657",
        "LOINC:LP191513-3",
        "LOINC:LP191515-8",
        "LOINC:77703-7",
        "SCITD:9057007",
        "SCITD:719282008",
        "SCITD:233663004",
        "SCITD:86204009",
        "SCITD:233669000",
        "SCITD:9748009",
        "SCITD:25437005",
        "SCITD:735461003",
        "SCITD:102449007",
        "SCITD:197432008",
        "SCITD:47333004",
        "SCITD:102448004"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = False,
            system_is_regex = False,
            system = "https://browser.ihtsdotools.org",
            code = "SCTID: 86204009"
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