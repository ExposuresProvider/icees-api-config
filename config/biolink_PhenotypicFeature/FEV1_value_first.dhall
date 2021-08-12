let meta = ../../common/meta.dhall
let number = meta.number
in {
    name = "FEV1_value_first",
    identifiers = [
        "LOINC:52485-0",
        "LOINC:20150-9",
        "NCIT:C120933",
        "UMLS:C0016529",
        "SCTID:59328004"
    ],
    feature = {
        feature_type = number,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}