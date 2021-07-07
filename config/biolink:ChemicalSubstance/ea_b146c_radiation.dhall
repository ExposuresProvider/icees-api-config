let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b146c_radiation",
    identifiers = [
        "ENVO_21001218",
        "ENVO:01001857",
        "ENVO:01001861",
        "ENVO:01001864"
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