let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b110a_arsenic",
    identifiers = [
        "NCIT:C133964",
        "CHEBI_27563"
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