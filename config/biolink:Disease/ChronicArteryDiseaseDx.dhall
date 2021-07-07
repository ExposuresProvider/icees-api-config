let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ChronicArteryDiseaseDx",
    identifiers = [
        "NCIT:C12372",
        "UMLSCUI:C0003842",
        "MONDO:0000473",
        "SCTID:27624003"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}