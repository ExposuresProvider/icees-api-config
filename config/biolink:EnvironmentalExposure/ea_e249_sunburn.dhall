let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_e249_sunburn",
    identifiers = [
        "C3395",
        "MESH:D013471",
        "SCTID:403194002",
        "MONDO:0005326"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}