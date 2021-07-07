let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_b050_med_diabetes",
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    }
}