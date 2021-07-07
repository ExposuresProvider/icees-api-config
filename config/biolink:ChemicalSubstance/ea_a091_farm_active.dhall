let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_a091_farm_active",
    identifiers = [
        "ENVO:01001170"
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