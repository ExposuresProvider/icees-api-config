let meta = ../../common/meta.dhall
let string = meta.string
in {
    name = "VisitType",
    identifiers = [
        "NCIT:C39564",
        "UMLS:C1512346",
        "SCTID:103324002"
    ],
    feature = {
        feature_type = string,
        categories = [
            "biolink:ActivityAndBehavior"
        ]
    }
}