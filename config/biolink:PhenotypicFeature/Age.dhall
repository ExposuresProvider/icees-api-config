let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "Age",
    identifiers = [
        "NCIT:C25150",
        "UMLSCUI:C0001779",
        "NCIT:C69217",
        "UMLSCUI:C2348002",
        "NCIT:C37908",
        "UMLSCUI:C1510829",
        "SCTID:424144002",
        "SCTID:397669002"
    ],
    feature = {
        feature_type = enum [
            "0-2",
            "3-17",
            "18-34",
            "35-50",
            "51-69",
            "70-89"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}