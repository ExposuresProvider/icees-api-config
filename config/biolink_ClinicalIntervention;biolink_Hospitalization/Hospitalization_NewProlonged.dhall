let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "Hospitalization_NewProlonged",
    identifiers = [
        "MESH:D006760"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:ClinicalIntervention",
            "biolink:Hospitalization"
        ]
    }
}