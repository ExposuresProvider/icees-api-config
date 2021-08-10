let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let integer = meta.integer
in {
    name = "BrainNatriureticPeptide",
    identifiers = [
        "CHEBI:135919",
        "NCIT:C74735",
        "UMLSCUI:C1095989",
        "NCIT:C88523",
        "UMLSCUI:CL449078",
        "NCIT:C88524",
        "UMLSCUI:C0754710",
        "SCTID:390917008",
        "SCTID:1012131000000106",
        "SCTID:407059007",
        "SCTID:390293004",
        "SCTID:389561001",
        "SCTID:407059007",
        "SCTID:407060002",
        "SCTID:414798009",
        "LOINC:LP94520-1",
        "LOINC:LP28609-3",
        "LOINC:42637-9",
        "LOINC:LP120961-0",
        "RxNorm:358794",
        "RxNorm:575730",
        "RxNorm:349294",
        "RxNorm:351985",
        "PUBCHEM.COMPOUND:5332598",
        "PUBCHEM.COMPOUND:1139211146",
        "PUBCHEM.COMPOUND:131850025",
        "PUBCHEM.COMPOUND:102601995",
        "PUBCHEM.COMPOUND:101609258",
        "PUBCHEM.COMPOUND:101599692",
        "PUBCHEM.COMPOUND:74763981",
        "PUBCHEM.COMPOUND:71308564",
        "PUBCHEM.COMPOUND:71308561",
        "PUBCHEM.COMPOUND:71308373",
        "PUBCHEM.COMPOUND:71306940",
        "PUBCHEM.COMPOUND:56841835",
        "PUBCHEM.COMPOUND:53325981",
        "PUBCHEM.COMPOUND:45588097",
        "PUBCHEM.COMPOUND:16132422"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Observation",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://loinc.org",
            code = "30934-4"
        }
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}