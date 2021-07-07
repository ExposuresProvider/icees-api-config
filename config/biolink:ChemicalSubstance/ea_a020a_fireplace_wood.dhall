let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_a020a_fireplace_wood",
    identifiers = [
        "NCIT:C164056",
        "NCIT:C157711"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    }
}