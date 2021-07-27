let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "AbdominalPain",
    identifiers = [
        "NCIT:C143255",
        "UMLS:C0423651",
        "NCIT:C35272",
        "UMLS:C0423653",
        "UMLS:C0476289",
        "UMLS:C0423646",
        "UMLS:C0581869",
        "UMLS:C0277969",
        "UMLS:C1969977",
        "UMLS:C0740577",
        "UMLS:C0558499",
        "UMLS:C3840090",
        "NCIT:C145112",
        "NCIT:C143959",
        "UMLS:C0740584",
        "UMLS:C0234246",
        "NCIT:C144496",
        "UMLS:C2586208",
        "UMLS:C0563276",
        "UMLS:C2585575",
        "UMLS:C0587223",
        "UMLS:C0232496",
        "UMLS:C0563277",
        "UMLS:C4047369",
        "UMLS:C1282002",
        "UMLS:C0423650",
        "UMLS:C0589386",
        "UMLS:C0585107",
        "UMLS:C4047372",
        "UMLS:C2749840",
        "UMLS:C0000727",
        "UMLS:C0277970",
        "UMLS:C1281941",
        "UMLS:C0476308",
        "UMLS:C0423655",
        "UMLS:C1868011",
        "UMLS:C3553274",
        "UMLS:C3266155",
        "UMLS:C0400882",
        "UMLS:C1300119",
        "UMLS:C0478659",
        "UMLS:C4479166",
        "UMLS:C0558502",
        "UMLS:C0558501",
        "UMLS:C1842405",
        "UMLS:C0558503",
        "UMLS:C0436922",
        "UMLS:C2919655",
        "UMLS:C0436932",
        "UMLS:C0436925",
        "UMLS:C0436930",
        "UMLS:C0436929",
        "UMLS:C0436931",
        "UMLS:C0436927",
        "UMLS:C0436923",
        "UMLS:C3873252",
        "UMLS:C0436926",
        "UMLS:C0436924",
        "UMLS:C0851977",
        "MONDO:0002268",
        "MONDO:0009842"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}