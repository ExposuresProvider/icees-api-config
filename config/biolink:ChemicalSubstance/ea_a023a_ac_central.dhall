let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_a023a_ac_central",
    identifiers = [
        "ENVO:00002874"
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