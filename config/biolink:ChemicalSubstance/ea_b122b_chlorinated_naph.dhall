let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b122b_chlorinated_naph",
    identifiers = [
        "CHEBI_23116",
        "CHEBI:16482",
        "ENVO:00002180",
        "ENVO:01000551"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure"
        ]
    }
}