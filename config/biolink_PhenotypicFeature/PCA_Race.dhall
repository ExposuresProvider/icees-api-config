let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "PCA_Race",
    identifiers = [
        "NCIT:C17049",
        "UMLS:C0034510",
        "NCIT:C93992",
        "UMLS:C2986190",
        "SNOMED:103579009",
        "MESH:C115528",
        "NCIT:C104495",
        "MESH:C103644",
        "MESH:C478659",
        "MESH:C060300",
        "MESH:C025011",
        "MESH:C539302",
        "UMLS:C0920122",
        "MESH:D000873",
        "MESH:C000632147",
        "MESH:C000588642",
        "MESH:C019594",
        "MESH:C574050",
        "MESH:C070231",
        "MESH:C102552",
        "MESH:D031642",
        "MESH:C000626300",
        "MESH:C062165",
        "MESH:C000626301",
        "MESH:C118554",
        "MESH:C000589006",
        "MESH:C435015",
        "MESH:C000597211",
        "NCIT:C37932"
    ],
    feature = {
        feature_type = enum [
            "White",
            "Black",
            "East Asian",
            "Hispanic",
            "Other/Multiracial"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}