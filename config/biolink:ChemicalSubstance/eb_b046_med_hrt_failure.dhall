let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_b046_med_hrt_failure",
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