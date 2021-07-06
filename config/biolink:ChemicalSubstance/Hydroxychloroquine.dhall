let meta = ../../common/meta.dhall
let ICEESAPIType = meta.ICEESAPIType
let Mapping = meta.Mapping
let NearestMapping = meta.NearestMapping
let generic_fhir_mapping = meta.generic_fhir_mapping
let environmental_mapping = meta.environmental_mapping
let avg = meta.avg
let max = meta.max
let prev_date = meta.prev_date
let integer = meta.integer
let range = meta.range
let string = meta.string
let enum = meta.enum
let number = meta.number
let cut = meta.cut
let qcut = meta.qcut
let range_bins = meta.range_bins
let no_binning = meta.no_binning
let nearest_point_distance = meta.nearest_point_distance
let nearest_point_attribute = meta.nearest_point_attribute
let nearest_feature_distance = meta.nearest_feature_distance
let nearest_feature_attribute = meta.nearest_feature_attribute
let no_identifiers = meta.no_identifiers
let no_categories = meta.no_categories
let no_mapping = meta.no_mapping
let geoid_mapping = meta.geoid_mapping
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
        "SCTID:373540008",
        "SCTID:83490000",
        "SCTID:105208003",
        "SCTID:776273003",
        "SCTID:330037008",
        "SCTID:8558711000001102",
        "SCTID:8558811000001105",
        "SCTID:12623711000001108",
        "SCTID:8558911000001100",
        "SCTID:8559011000001109",
        "SCTID:8559111000001105",
        "SCTID:8559211000001104",
        "SCTID:12635711000001106",
        "SCTID:12623811000001100",
        "SCTID:8559911000001108",
        "SCTID:8560011000001105",
        "SCTID:12623911000001105",
        "SCTID:12624011000001108",
        "SCTID:12624111000001109",
        "SCTID:12624211000001103",
        "SCTID:12624311000001106",
        "SCTID:8559311000001107",
        "SCTID:8559411000001100",
        "SCTID:12624411000001104",
        "SCTID:12624511000001100",
        "SCTID:34683611000001101",
        "SCTID:12624611000001101",
        "SCTID:8559511000001101",
        "SCTID:8559611000001102",
        "SCTID:12624711000001105",
        "SCTID:12624811000001102",
        "SCTID:12624911000001107",
        "SCTID:12625011000001107",
        "SCTID:8559711000001106",
        "SCTID:8559811000001103",
        "SCTID:12625111000001108",
        "SCTID:12625211000001102",
        "SCTID:24155411000001107",
        "SCTID:1018811000001108",
        "SCTID:16054711000001104",
        "SCTID:20565811000001105",
        "SCTID:32407811000001102",
        "SCTID:29874411000001104",
        "SCTID:20476911000001105",
        "SCTID:22045011000001103",
        "SCTID:8535311000001106",
        "SCTID:8534511000001101",
        "SCTID:8536611000001106",
        "SCTID:8536411000001108",
        "SCTID:12567111000001103",
        "SCTID:12567011000001104",
        "SCTID:12567011000001104",
        "SCTID:8534611000001102",
        "SCTID:8535811000001102",
        "SCTID:8535611000001101",
        "SCTID:8536911000001100",
        "SCTID:8536811000001105",
        "SCTID:8537211000001106",
        "SCTID:8537111000001100",
        "SCTID:2567411000001108",
        "SCTID:12567311000001101",
        "SCTID:12567711000001102",
        "SCTID:12567611000001106",
        "SCTID:8538411000001109",
        "SCTID:8538111000001104",
        "SCTID:8539411000001101",
        "SCTID:29562611000001103",
        "SCTID:12568011000001103",
        "SCTID:12567911000001100",
        "SCTID:12568311000001100",
        "SCTID:12568211000001108",
        "SCTID:12568711000001101",
        "SCTID:12568511000001106",
        "SCTID:12569211000001103",
        "SCTID:12569111000001109",
        "SCTID:12569511000001100",
        "SCTID:12569411000001104",
        "SCTID:8537811000001107",
        "SCTID:8537611000001108",
        "SCTID:8539511000001102",
        "SCTID:8539111000001106",
        "SCTID:12570111000001107",
        "SCTID:12569911000001107",
        "SCTID:12570411000001102",
        "NCIT:C557",
        "UMLSCUI:C0020336",
        "NCIT:C29101",
        "UMLSCUI:C0596007",
        "CHEBI:5801",
        "PUBCHEM:3652"
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
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    }
}