let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_c023d_nodule_benign",
    identifiers = [
        "LOINC:LA14304-2",
        "MESH:D016606",
        "MESH:D012218"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}