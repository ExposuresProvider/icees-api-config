let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_a017_blk_cohosh",
    identifiers = [
        "SCTID:7404711000001103",
        "SCTID:7404811000001106",
        "LOINC:LA14584-9"
    ],
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