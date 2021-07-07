let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b110e_lead",
    identifiers = [
        "NCIT:C133964",
        "CHEBI:27889",
        "CHEBI:145698",
        "CHEBI:49807",
        "CHEBI:52455",
        "CHEBI:30180",
        "CHEBI:33418",
        "CHEBI:31767",
        "CHEBI:37187",
        "CHEBI:37184",
        "CHEBI:37186",
        "CHEBI:88212",
        "CHEBI:33585",
        "CHEBI:30182",
        "CHEBI:30183",
        "CHEBI:30184",
        "CHEBI:77245",
        "CHEBI:30181",
        "MONDO:0018019",
        "CHEBI:30558",
        "CHEBI:86257",
        "CHEBI:30565",
        "CHEBI:37192",
        "CHEBI:33586",
        "CHEBI:81881",
        "CHEBI:33112",
        "CHEBI:37185",
        "MONDO:0013000",
        "MONDO:0006649",
        "MONDO:0007882",
        "MONDO:0015306"
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