let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_a004c_birth_multi",
    identifiers = [
        "NCIT:C81271",
        "UMLSCUI:C2015861",
        "NCIT:C93517",
        "UMLSCUI:C0005607",
        "LOINC:LA18973-0",
        "SCITD:45384004",
        "SCITD:722250005",
        "SCITD:199328007",
        "MONDO:0007245"
    ],
    feature = {
        feature_type = enum [
            "Twin",
            "Triplet",
            "Other Multiple"
        ],
        categories = [
            "biolink:NamedThing"
        ]
    }
}