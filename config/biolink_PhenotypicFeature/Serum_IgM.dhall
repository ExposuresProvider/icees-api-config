let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "Serum_IgM",
    identifiers = [
        "UMLS:C2674487",
        "UMLS:C3278892",
        "UMLS:C1864582",
        "UMLS:C4014098",
        "UMLS:C4013570",
        "SCTID:165867008",
        "LOINC:LP384866-2",
        "LOINC:LP377049-4",
        "LOINC:LP395419-7",
        "LOINC:LP377091-6",
        "CPT:0062U",
        "CPT:82784",
        "CPT:82787",
        "CPT:86310",
        "CPT:86632",
        "CPT:86704",
        "CPT:86705",
        "CPT:86708",
        "CPT:86709",
        "CPT:86762",
        "CPT:86765",
        "CPT:86777",
        "CPT:86778",
        "CPT:86787",
        "CPT:86788",
        "CPT:86789",
        "CPT:86790",
        "CPT:86794"
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