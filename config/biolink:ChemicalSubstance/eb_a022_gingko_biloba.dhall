let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_a022_gingko_biloba",
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