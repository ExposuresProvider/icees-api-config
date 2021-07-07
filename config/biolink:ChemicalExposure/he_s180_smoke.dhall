let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_s180_smoke",
    identifiers = [
        "NCIT:C172730",
        "NCIT:C70989,",
        "NCIT:C167376,",
        "NCIT:C118169,",
        "NCIT:C157711,",
        "NCIT:C116977"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalExposure",
            "biolink:ChemicalSubstance"
        ]
    }
}