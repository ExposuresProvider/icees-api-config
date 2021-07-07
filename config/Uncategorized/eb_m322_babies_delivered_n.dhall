let meta = ../../common/meta.dhall
let enum = meta.enum
let no_categories = meta.no_categories
in {
    name = "eb_m322_babies_delivered_n",
    feature = {
        feature_type = enum [
            "0",
            "1",
            "2",
            ">2"
        ],
        categories = no_categories
    }
}