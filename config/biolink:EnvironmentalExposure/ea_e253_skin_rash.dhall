let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_e253_skin_rash",
    identifiers = [
        "NCIT:C62596",
        "NCIT:C90259",
        "NCIT:C118464",
        "NCIT:C54450",
        "NCIT:C96388",
        "NCIT:C167409",
        "NCIT:C118468"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}