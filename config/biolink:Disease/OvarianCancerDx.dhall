let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "OvarianCancerDx",
    identifiers = [
        "SCTID:363443007",
        "SCTID:424600001",
        "SCTID:424486004",
        "SCTID:423274005",
        "SCTID:423480004",
        "SCTID:422782004",
        "SCTID:254856004",
        "SCTID:18412003",
        "SCTID:718220008",
        "MONDO:0008170",
        "MONDO:0005140",
        "MONDO:0011450",
        "MONDO:0011931",
        "MONDO:0012933",
        "MONDO:0013253",
        "MONDO:0003582",
        "MONDO:0024282",
        "MONDO:0013669",
        "MONDO:0016248",
        "MONDO:0016249",
        "MONDO:0004033",
        "MONDO:0006477",
        "MONDO:0021144",
        "MONDO:0005211",
        "MONDO:0006335",
        "MONDO:0021068",
        "MONDO:0002230",
        "MONDO:0018364",
        "MONDO:0018171",
        "MONDO:0003795"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-9-cm",
            code = "(183)[.].*"
        },
        {
            resource = "Condition",
            code_is_regex = True,
            system_is_regex = False,
            system = "http://hl7.org/fhir/sid/icd-10-cm",
            code = "(C56)[.].*"
        }
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
    },
    binning_strategy = max_cutoff 2
}