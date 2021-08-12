let meta = ../../common/meta.dhall
let number = meta.number
in {
    name = "AgeQualifyingLab",
    identifiers = [
        "NCIT:C25150",
        "UMLS:C0001779",
        "NCIT:C69217",
        "UMLS:C2348002",
        "NCIT:C37908",
        "UMLS:C1510829",
        "SCTID:424144002",
        "SCTID:397669002"
    ],
    feature = {
        feature_type = number,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}