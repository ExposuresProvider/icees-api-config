let meta = ../../common/meta.dhall
let number = meta.number
in {
    name = "FEV1FVC_fraction_first",
    identifiers = [
        "LOINC:52485-0",
        "LOINC:19926-5",
        "NCIT:C38084",
        "UMLS:C0849974",
        "SCTID:165043001",
        "SCTID:251944000",
        "SCTID:313222007"
    ],
    feature = {
        feature_type = number,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}