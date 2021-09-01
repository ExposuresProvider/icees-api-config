let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Tocilizumab",
    identifiers = [
        "RxNorm:2106072",
        "RxNorm:2106074",
        "RxNorm:2106076",
        "RxNorm:2106077",
        "RxNorm:2106073",
        "RxNorm:2106075",
        "RxNorm:1162729",
        "RxNorm:612865",
        "RxNorm:895758",
        "RxNorm:895760",
        "RxNorm:895764",
        "RxNorm:895762",
        "RxNorm:895759",
        "RxNorm:1441530",
        "RxNorm:1441527",
        "RxNorm:1441525",
        "RxNorm:1441531",
        "RxNorm:1441532",
        "RxNorm:1441528",
        "RxNorm:1441526",
        "RxNorm:1441529",
        "RxNorm:1657973",
        "RxNorm:1657974",
        "RxNorm:1657975",
        "RxNorm:1657976",
        "RxNorm:1657977",
        "RxNorm:1657978",
        "RxNorm:1657979",
        "RxNorm:1657980",
        "RxNorm:1657981",
        "RxNorm:1657982",
        "SCITD:764192005",
        "SCITD:766668003",
        "SCITD:777794005",
        "SCITD:780657004",
        "SCITD:724164001",
        "SCITD:444617004",
        "SCITD:444648007",
        "SCITD:444649004",
        "SCITD:329071000119104",
        "SCITD:16101911000001101",
        "SCITD:16102011000001108",
        "SCITD:16102111000001109",
        "SCITD:24856911000001102",
        "SCITD:35431611000001103",
        "SCITD:16099011000001109",
        "SCITD:16099611000001102",
        "SCITD:16099311000001107",
        "SCITD:24779111000001109",
        "SCITD:35410211000001103",
        "NCIT:C84217",
        "UMLS:C1609165",
        "PUBCHEM.COMPOUND:17396767",
        "PUBCHEM.COMPOUND:104253153",
        "PUBCHEM.COMPOUND:135345962",
        "PUBCHEM.COMPOUND:178103463",
        "PUBCHEM.COMPOUND:329976997",
        "PUBCHEM.COMPOUND:347910344",
        "PUBCHEM.COMPOUND:349016747",
        "PUBCHEM.COMPOUND:354355060",
        "PUBCHEM.COMPOUND:385326041",
        "PUBCHEM.COMPOUND:385327557",
        "PUBCHEM.COMPOUND:387061215",
        "PUBCHEM.COMPOUND:405092064"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "612865"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalEntity",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    },
    binning_strategy = max_cutoff 2
}