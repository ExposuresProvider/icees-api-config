let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "CodeBlue",
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:NamedThing"
        ]
    }
}