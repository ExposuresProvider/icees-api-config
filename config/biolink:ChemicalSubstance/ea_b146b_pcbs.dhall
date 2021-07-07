let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b146b_pcbs",
    identifiers = [
        "CHEBI:35446"
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