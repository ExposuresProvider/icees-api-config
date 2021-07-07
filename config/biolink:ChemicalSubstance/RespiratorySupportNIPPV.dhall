let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "RespiratorySupportNIPPV",
    identifiers = [
        "SCTID:428311008",
        "SCTID:447837008",
        "SCTID:430191008"
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