let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b110c_cadmium",
    identifiers = [
        "NCIT:C133964",
        "CHEBI:22977",
        "CHEBI:48775",
        "CHEBI:52619",
        "CHEBI:52620",
        "CHEBI:50292",
        "CHEBI:50833",
        "CHEBI:63063",
        "CHEBI:35456",
        "CHEBI:50834",
        "CHEBI:22978",
        "CHEBI:77732",
        "CHEBI:51183",
        "CHEBI:63938",
        "CHEBI:86157",
        "CHEBI:86156",
        "CHEBI:36565"
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