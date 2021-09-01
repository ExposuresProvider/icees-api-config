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
        "SNOMED:71960002",
        "SNOMED:142932005",
        "SNOMED:1022561000000101",
        "SNOMED:142932005",
        "SNOMED:165525005",
        "SNOMED:556961000000109",
        "SNOMED:143123003",
        "SNOMED:386789004",
        "SNOMED:142933000",
        "SNOMED:250299007",
        "SNOMED:142935007",
        "SNOMED:365601007",
        "SNOMED:165524009"
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}