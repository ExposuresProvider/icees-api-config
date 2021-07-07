let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "Serum_IgG",
    identifiers = [
        "UMLS:C3278891",
        "UMLS:C1864582",
        "UMLS:C4017766",
        "UMLS:C1847382",
        "UMLS:C4013570",
        "UMLS:C2750138",
        "SCTID:165868003",
        "CPT:0062U",
        "CPT:0224U",
        "CPT:82784",
        "CPT:82787",
        "CPT:86003",
        "CPT:86631",
        "CPT:86677",
        "CPT:86695",
        "CPT:86704",
        "CPT:86708",
        "CPT:86762",
        "CPT:86765",
        "CPT:86777",
        "CPT:86784",
        "CPT:86787",
        "CPT:86790"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}