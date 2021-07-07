let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_a021d_stove_coal",
    identifiers = [
        "ENVO:2000013"
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