let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "Confirmed_IdiopathicBronchiectasisDx",
    feature = {
        feature_type = enum [
            "0",
            "1"
        ],
        categories = [
            "biolink:Disease"
        ]
    }
}