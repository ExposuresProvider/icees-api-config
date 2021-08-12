let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Flunisolide",
    identifiers = [
        "SMILES:O.CC1(C)O[C@@H]2CC3[C@@H]4C[C@H](F)C5:CC(:O)C:CC5(C)[C@H]4[C@@H](O)C[C@]3(C)[C@@]2(O1)C(:O)CO.CC6(C)O[C@@H]7CC8[C@@H]9C[C@H](F)C%10:CC(:O)C:CC%10(C)[C@H]9[C@@H](O)C[C@]8(C)[C@@]7(O6)C(:O)CO",
        "CAS:77326-96-6",
        "MESH:C007734",
        "CHEMBL:CHEMBL1512",
        "PUBCHEM.COMPOUND:82153",
        "RxNorm:1245275",
        "RxNorm:1245277",
        "RxNorm:828927",
        "RxNorm:1245270",
        "RxNorm:1245276",
        "RxNorm:1797863",
        "UMLS:C3265693",
        "UMLS:C3265695",
        "UMLS:C0976950",
        "UMLS:C3265688",
        "UMLS:C3265694",
        "UMLS:C3495487",
        "SCTID:116588001",
        "SCTID:43879000",
        "SCTID:427809006",
        "SCTID:374314009",
        "SCTID:331035006",
        "SCTID:66125007",
        "SCTID:422287006"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1245275",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1245277",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "828927",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1245270",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1245276",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797863",
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