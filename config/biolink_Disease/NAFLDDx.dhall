let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "NAFLDDx",
    identifiers = [
        "OMIM:MTHU033358",
        "UMLS:C4722044",
        "MONDO:0013209",
        "MONDO:0013246",
        "MONDO:0021105",
        "MESH:D065626",
        "SNOMED:1079461000000108",
        "SNOMED:- SNOMED:1079441000000107",
        "SNOMED:772815008",
        "SNOMED:772814007",
        "SNOMED:1079451000000105",
        "SNOMED:772813001",
        "SNOMED:197315008",
        "SNOMED:1079441000000107",
        "ICD10:K75.%",
        "ICD10:K76.%"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:Disease"
        ]
    }
}