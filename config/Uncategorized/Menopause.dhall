let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let no_categories = meta.no_categories
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Menopause",
    identifiers = [
        "SCTID:161712005",
        "SCTID:289903006",
        "SCTID:307429007",
        "SCTID:289904000",
        "SCTID:237123000",
        "SCTID:309606002",
        "SCTID:303111005",
        "SCTID:20045006",
        "SCTID:276477006",
        "SCTID:371036001",
        "SCTID:160398001",
        "SCTID:373717006",
        "SCTID:313207002",
        "SCTID:160397006",
        "SCTID:31351009",
        "SCTID:268530007",
        "SCTID:402804002",
        "SCTID:170962000",
        "SCTID:278064001",
        "SCTID:76742009",
        "SCTID:439421000",
        "SCTID:237138004",
        "SCTID:170961007",
        "SCTID:170951000",
        "SCTID:243875009",
        "SCTID:278063007",
        "SCTID:427956008",
        "SCTID:170949004",
        "SCTID:423478005",
        "SCTID:170953002",
        "SCTID:170950004",
        "SCTID:735614005",
        "SCTID:309605003",
        "SCTID:464852003",
        "SCTID:88424000",
        "SCTID:106002000",
        "SCTID:718881004"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = no_categories
    },
    binning_strategy = max_cutoff 2
}