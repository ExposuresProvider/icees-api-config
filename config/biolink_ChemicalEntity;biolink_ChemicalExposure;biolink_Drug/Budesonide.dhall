let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Budesonide",
    identifiers = [
        "SMILES:CCCC1O[C@@H]2C[C@H]3[C@@H]4CCC5:CC(:O)C:C[C@]5(C)[C@H]4[C@@H](O)C[C@]3(C)[C@@]2(O1)C(:O)CO",
        "CAS:51333-22-3",
        "MESH:D019819",
        "CHEMBL:CHEMBL1370",
        "PUBCHEM.COMPOUND:5281004",
        "RxNorm:616817",
        "RxNorm:616819",
        "RxNorm:616830",
        "RxNorm:966524",
        "RxNorm:966529",
        "RxNorm:1797931",
        "RxNorm:1244215",
        "RxNorm:1246290",
        "RxNorm:1246306",
        "RxNorm:1246315",
        "RxNorm:1246317",
        "RxNorm:1366556",
        "RxNorm:1596778",
        "RxNorm:1797929",
        "RxNorm:247551",
        "RxNorm:141917",
        "RxNorm:247047",
        "RxNorm:247048",
        "RxNorm:1244214",
        "RxNorm:247042",
        "RxNorm:247691",
        "RxNorm:247481",
        "RxNorm:349094",
        "RxNorm:351109",
        "RxNorm:153173",
        "RxNorm:252559",
        "RxNorm:409732",
        "RxNorm:597829",
        "RxNorm:1246288",
        "RxNorm:1246304",
        "RxNorm:1246314",
        "RxNorm:1246316",
        "RxNorm:966522",
        "RxNorm:966527",
        "RxNorm:1366550",
        "RxNorm:1596779",
        "RxNorm:250648",
        "UMLS:C0939010",
        "UMLS:C1703204",
        "UMLS:C1169541",
        "UMLS:C1948304",
        "UMLS:C1948306",
        "UMLS:C0875802",
        "UMLS:C0592462",
        "UMLS:C1876888",
        "UMLS:C1876887",
        "UMLS:C1966262",
        "UMLS:C1966261",
        "UMLS:C3531324",
        "UMLS:C3864313",
        "UMLS:C0788679",
        "UMLS:C4239003",
        "UMLS:C0542862",
        "UMLS:C0787972",
        "UMLS:C0787973",
        "UMLS:C0592460",
        "UMLS:C4239002",
        "UMLS:C4239004",
        "UMLS:C0788570",
        "UMLS:C1164602",
        "UMLS:C1168655",
        "UMLS:C0593930",
        "UMLS:C0794777",
        "UMLS:C1338988",
        "UMLS:C1660662",
        "UMLS:C1967742",
        "UMLS:C1967737",
        "UMLS:C1967738",
        "UMLS:C1967733",
        "UMLS:C1968012",
        "UMLS:C1968013",
        "UMLS:C3531318",
        "UMLS:C3864327",
        "UMLS:C4239005",
        "SNOMED:395726003",
        "SNOMED:317446001",
        "SNOMED:108622005",
        "SNOMED:413717007",
        "SNOMED:356117009",
        "SNOMED:350389004",
        "SNOMED:317694006",
        "SNOMED:349367000",
        "SNOMED:349366009",
        "SNOMED:320574006",
        "SNOMED:317695007",
        "SNOMED:317443009",
        "SNOMED:375834008",
        "SNOMED:320571003",
        "SNOMED:377034005",
        "SNOMED:320570002",
        "SNOMED:413721000",
        "SNOMED:410849004",
        "SNOMED:407886008",
        "SNOMED:407885007",
        "SNOMED:376245009",
        "SNOMED:331032009",
        "SNOMED:417175001",
        "SNOMED:320569003",
        "SNOMED:428160008",
        "SNOMED:428161007",
        "SNOMED:407833005",
        "SNOMED:413720004",
        "SNOMED:413722007",
        "SNOMED:413718002",
        "SNOMED:320567001",
        "SNOMED:320568006",
        "SNOMED:320565009",
        "SNOMED:134498003",
        "SNOMED:134499006",
        "SNOMED:413719005",
        "SNOMED:408023003"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "616817",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "616819",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "616830",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "966524",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "966529",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797931",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1244215",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1366556",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1596778",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797929",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "247551",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "141917",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "247047",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "247048",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1244214",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "247042",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "247691",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "247481",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "349094",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "351109",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "153173",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "252559",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "966522",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "966527",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1366550",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1596779",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "250648",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
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