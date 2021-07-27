let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "pCO2Arterial",
    identifiers = [
        "NCIT:C82625",
        "UMLSCUI:C0201931",
        "NCIT:C147411",
        "UMLSCUI:CL545325",
        "LOINC:28644-3",
        "LOINC:2019-8"
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}