let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "EosinophilCount",
    identifiers = [
        "NCIT:C3015",
        "UMLS:C0427396",
        "UMLS:C4324572",
        "UMLS:C1963714",
        "UMLS:C1619696",
        "UMLS:C1843217",
        "SCTID:71960002",
        "SCTID:142932005",
        "SCTID:1022561000000101",
        "SCTID:142932005",
        "SCTID:165525005",
        "SCTID:556961000000109",
        "SCTID:143123003",
        "SCTID:386789004",
        "SCTID:142933000",
        "SCTID:250299007",
        "SCTID:142935007",
        "SCTID:365601007",
        "SCTID:165524009"
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}