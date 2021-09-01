let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Hydroxychloroquine",
    identifiers = [
        "RxNorm:5521",
        "RxNorm:1164628",
        "RxNorm:370656",
        "RxNorm:1164627",
        "RxNorm:329852",
        "RxNorm:440422",
        "RxNorm:93787",
        "RxNorm:368893",
        "RxNorm:566152",
        "RxNorm:567454",
        "RxNorm:979093",
        "RxNorm:979096",
        "RxNorm:197796",
        "RxNorm:433859",
        "RxNorm:202317",
        "RxNorm:206630",
        "LOINC:LP16163-5",
        "LOINC:LP392220-2",
        "LOINC:4278-8",
        "LOINC:LP389096-1",
        "LOINC:3684-8",
        "LOINC:55543-3",
        "LOINC:74986-1",
        "SNOMED:373540008",
        "SNOMED:83490000",
        "SNOMED:105208003",
        "SNOMED:776273003",
        "SNOMED:330037008",
        "SNOMED:8558711000001102",
        "SNOMED:8558811000001105",
        "SNOMED:12623711000001108",
        "SNOMED:8558911000001100",
        "SNOMED:8559011000001109",
        "SNOMED:8559111000001105",
        "SNOMED:8559211000001104",
        "SNOMED:12635711000001106",
        "SNOMED:12623811000001100",
        "SNOMED:8559911000001108",
        "SNOMED:8560011000001105",
        "SNOMED:12623911000001105",
        "SNOMED:12624011000001108",
        "SNOMED:12624111000001109",
        "SNOMED:12624211000001103",
        "SNOMED:12624311000001106",
        "SNOMED:8559311000001107",
        "SNOMED:8559411000001100",
        "SNOMED:12624411000001104",
        "SNOMED:12624511000001100",
        "SNOMED:34683611000001101",
        "SNOMED:12624611000001101",
        "SNOMED:8559511000001101",
        "SNOMED:8559611000001102",
        "SNOMED:12624711000001105",
        "SNOMED:12624811000001102",
        "SNOMED:12624911000001107",
        "SNOMED:12625011000001107",
        "SNOMED:8559711000001106",
        "SNOMED:8559811000001103",
        "SNOMED:12625111000001108",
        "SNOMED:12625211000001102",
        "SNOMED:24155411000001107",
        "SNOMED:1018811000001108",
        "SNOMED:16054711000001104",
        "SNOMED:20565811000001105",
        "SNOMED:32407811000001102",
        "SNOMED:29874411000001104",
        "SNOMED:20476911000001105",
        "SNOMED:22045011000001103",
        "SNOMED:8535311000001106",
        "SNOMED:8534511000001101",
        "SNOMED:8536611000001106",
        "SNOMED:8536411000001108",
        "SNOMED:12567111000001103",
        "SNOMED:12567011000001104",
        "SNOMED:12567011000001104",
        "SNOMED:8534611000001102",
        "SNOMED:8535811000001102",
        "SNOMED:8535611000001101",
        "SNOMED:8536911000001100",
        "SNOMED:8536811000001105",
        "SNOMED:8537211000001106",
        "SNOMED:8537111000001100",
        "SNOMED:2567411000001108",
        "SNOMED:12567311000001101",
        "SNOMED:12567711000001102",
        "SNOMED:12567611000001106",
        "SNOMED:8538411000001109",
        "SNOMED:8538111000001104",
        "SNOMED:8539411000001101",
        "SNOMED:29562611000001103",
        "SNOMED:12568011000001103",
        "SNOMED:12567911000001100",
        "SNOMED:12568311000001100",
        "SNOMED:12568211000001108",
        "SNOMED:12568711000001101",
        "SNOMED:12568511000001106",
        "SNOMED:12569211000001103",
        "SNOMED:12569111000001109",
        "SNOMED:12569511000001100",
        "SNOMED:12569411000001104",
        "SNOMED:8537811000001107",
        "SNOMED:8537611000001108",
        "SNOMED:8539511000001102",
        "SNOMED:8539111000001106",
        "SNOMED:12570111000001107",
        "SNOMED:12569911000001107",
        "SNOMED:12570411000001102",
        "NCIT:C557",
        "UMLS:C0020336",
        "NCIT:C29101",
        "UMLS:C0596007",
        "CHEBI:5801",
        "PUBCHEM.COMPOUND:3652"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "5521"
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